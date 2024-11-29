import 'package:get/get.dart';

class MainController extends GetxController {
  // untuk reactive state manager
  // menambahkan .obs agar bisa dipantau (bersifat reaktif)
  var data = 0.obs; // view dalam widget menggunakan obx

  // untuk simple state manager
  int simpleData = 0; // view dalam widget menggunakan GetBuilder

  void increment() => data++;
  void simpleIncrement() {
    simpleData++;

    // update untuk memperbarui tampilan nilai dalam widget ketika nilainya 5
    if (simpleData == 5) {
      update();
    }
  }

  void refreshScreen() {
    update();
  }
}
