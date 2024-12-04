import 'package:get/get.dart';

class WorkersController extends GetxController {
  // workers adalah fitur yang membantu dalam menganalisis perubahan
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    // TODO: implement onInit
    // ever(
    //   dataPantau,
    //   (data) => print("memantai setiap perubahan"),
    // );

    // once(
    //   dataPantau,
    //   (data) => print("cuma sekali pantau"),
    // );

    // debounce(
    //   dataPantau,
    //   (data) => print("memiliki fitur interval (contoh setiap 2 detik)"),
    //   time: Duration(seconds: 2),
    // );

    interval(
      dataPantau,
      (data) => print("memiliki fitur interval (contoh selama 2 detik)"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
