import 'package:get/get.dart';
import 'package:module_auth/modules/home/home_controller.dart';
import 'package:module_auth/modules/main/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MainController());
  }
}
