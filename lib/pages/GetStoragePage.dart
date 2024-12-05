import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/pages/GetStoragePages/LoginPage.dart';
// import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatelessWidget {
  const GetStoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Get Storage",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed("/login");
          },
          child: Text(
            "Login Page >>",
          ),
        ),
      ),
    );
  }
}
