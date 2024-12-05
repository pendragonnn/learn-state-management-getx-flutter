import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // menghilangkan back di appbar
        leading: SizedBox(),
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Page 1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 1"),
            ElevatedButton(
              onPressed: () {
                // back tanpa get x
                // Navigator.pop(context);

                // back dengan get x
                Get.back();
              },
              child: Text(
                "<< Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
