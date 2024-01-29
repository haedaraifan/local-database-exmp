import 'package:get/get.dart';
import 'package:local_database_exmp/pages/home/controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}