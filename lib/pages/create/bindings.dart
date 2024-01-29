import 'package:get/get.dart';
import 'package:local_database_exmp/pages/create/controller.dart';

class CreateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateController());
  }
}