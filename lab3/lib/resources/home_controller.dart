import 'package:get/get.dart';
import 'data_service.dart';
import 'models.dart';

class HomeController extends GetxController {
  final DataService _data; // serviciul care citește fișierele JSON
  HomeController(this._data);
  final isLoading = true.obs;
  final error = RxnString();
  final data = Rxn<HomeData>();

  @override
  void onInit() {
    super.onInit();
    fetch(); // pornește încărcarea datelor imediat ce controllerul este creat
  }

  // Funcție asincronă care citește fișierul JSON și actualizează starea
  Future<void> fetch() async {
    try {
      isLoading.value = true; // activează loader-ul

      // Citire JSON din DataService
      final json = await _data.loadHome();

      // Conversie JSON → HomeData
      data.value = HomeData.fromJson(json);

      error.value = null; // resetare eroare
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
