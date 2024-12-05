import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:state_management_getx_flutter/controllers/LoginController.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final LoginController loginC = Get.put(LoginController());
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberMe") != null) {
      loginC.isRememberMe.value = true;
      loginC.emailC.text = box.read("dataRememberMe")["email"];
      loginC.passwordC.text = box.read("dataRememberMe")["password"];
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => TextField(
              controller: loginC.passwordC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                suffix: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.isRememberMe.value,
              onChanged: (value) {
                loginC.isRememberMe.toggle();
              },
              title: Text("Remember Me"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: Text(
              "Login",
            ),
          ),
        ],
      ),
    );
  }
}
