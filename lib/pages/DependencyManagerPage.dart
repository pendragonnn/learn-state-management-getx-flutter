import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/DependencyManagerController.dart';
import 'package:state_management_getx_flutter/pages/DependencyManagerPage2.dart';

class DependencyManagerPage extends StatelessWidget {
  // without dependency manager
  // Map<String, dynamic> data = {
  //   "name": "Panjul",
  //   "age": 21,
  // };

  // Map<String, dynamic> data1 = {
  //   "name": "Yanto",
  //   "age": 21,
  // };

  // with dependency manager
  // kekurangan menggunakan get put adalah hanya dibuild satu kali saja
  // oleh karena itu lebih baik put diletakkan di main.dart
  // widget yang ingin menggunakan controller tersebut bisa menggunakan get find
  // DependencyManagerController dependencyC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Dependency Manager",
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
            // Text(
            //   "${dependencyC.data['name']} - ${dependencyC.data['age']} Tahun",
            //   style: TextStyle(
            //     fontSize: 30,
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // without dependency manager
                    // builder: (context) =>
                    //     // mengirim data antar widget
                    //     DependencyManagerPage2(
                    //   DependencyManagerPage(),
                    // ),
                    // with dependency manager
                    builder: (context) => DependencyManagerPage2(),
                  ),
                );
              },
              child: Text("Next >>"),
            )
          ],
        ),
      ),
    );
  }
}
