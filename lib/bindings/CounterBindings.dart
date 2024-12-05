import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/BindingsBuilderController.dart';

class CounterBindings extends Bindings {
  void dependencies() {
    Get.lazyPut(
      () => BindingsBuilderController(),
    );
  }
}
