import 'package:get/get.dart';
import 'data_service.dart';
import 'home_controller.dart';
import 'details_controller.dart';

//pornește DataService o singură dată în aplicație.
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataService>(() => DataService());
  }
}

//creează HomeController atunci când se deschide pagina principală.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(Get.find<DataService>()));
  }
}

//creează DetailsController când se intră pe pagina de detalii.
class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DetailsController>(DetailsController(Get.find<DataService>()));
  }
}
