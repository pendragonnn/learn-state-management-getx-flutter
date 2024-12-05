import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/LoginController.dart';

class GetHomePage extends StatelessWidget {
  GetHomePage({super.key});
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginC.logout();
        },
        child: Icon(
          Icons.logout,
        ),
      ),
    );
  }
}
