import 'package:get/get.dart';

class BindingsBuilderController extends GetxController {
  RxInt data = 0.obs;

  void increment() => data++;
  void decrement() => data--;
}
