import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/DependencyManagerController.dart';
import 'package:state_management_getx_flutter/pages/DependencyManagerPage.dart';

class DependencyManagerPage2 extends StatelessWidget {
  // without dependency manager
  // DependencyManagerPage2(this.dataPage2);

  // Map<String, dynamic> dataPage2;
  // DependencyManagerPage dataPage2;

  // with dependency manager
  // penggunaan get find
  DependencyManagerController dependencyC = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Page 2",
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
            Text(
              "${dependencyC.data1['name']} - ${dependencyC.data1['age']} Tahun",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
