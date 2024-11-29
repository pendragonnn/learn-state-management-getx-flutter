import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbarpage extends StatelessWidget {
  const Snackbarpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Snackbar GetX",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // contoh tanpa GetX
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text("halo"),
            //     // menambahkan label dan action
            //     action: SnackBarAction(label: "Close", onPressed: () {}),
            //   ),
            // );

            // dengan GetX
            Get.snackbar(
              "Halo",
              "Ini adalah pesan",
              snackPosition: SnackPosition.BOTTOM,
              colorText: Colors.white,
              backgroundColor: Colors.blue[300],
              dismissDirection: DismissDirection.down,
              margin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
            );
          },
          child: Text("Open Snackbar"),
        ),
      ),
    );
  }
}
