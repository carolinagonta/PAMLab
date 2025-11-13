import 'package:get/get.dart';
import 'data_service.dart';
import 'models.dart';

// Controller pentru pagina de detalii a cursului.
// Se ocupă de încărcarea datelor din details.json și de furnizarea lor către UI.
class DetailsController extends GetxController {
  final DataService _data; // serviciul care citește fișierul JSON
  DetailsController(this._data);
  final isLoading = true.obs;
  final error = RxnString();
  final course = Rxn<CourseDetails>();

  late final String courseId;

  @override
  void onInit() {
    super.onInit();
    courseId = (Get.arguments as String?) ?? 'course_typography_layout';

    fetch(); // pornim încărcarea datelor la inițializarea controllerului
  }

  // Funcție asincronă care încarcă detaliile cursului
  Future<void> fetch() async {
    try {
      isLoading.value = true; // pornim loader-ul
      final json = await _data.loadDetails(courseId);
      course.value = CourseDetails.fromJson(json['course']);

      error.value = null; // resetăm eroarea dacă totul a mers bine
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
