import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool isRememberMe = false.obs;

  void login() async {
    // simpan data di loal memory
    final box = GetStorage();

    if (emailC.text == "admin@gmail.com" && passwordC.text == "admin") {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      
      if (isRememberMe.isTrue) {
        box.write(
          "dataRememberMe",
          {
            "email": "admin@gmail.com",
            "password": "admin",
          },
        );
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Email atau Password tidak sesuai",
      );
    }
  }

  void logout() async {
    Get.offAllNamed("/login");
  }
}
