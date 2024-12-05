import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page1.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page2.dart';

class RouteManagementPage extends StatelessWidget {
  const RouteManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Route Management",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              // tanpa route management
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Page1(),
              //   ),
              // );

              // menggunakan push replacement (tidak bisa di-back) mengganti layar seutuhnya, bukan menumpuk
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Page1(),
              //   ),
              // );

              // menggunakan push named tanpa get x
              // Navigator.pushNamed(context, "page 1");

              // dengan get x
              // Get.to(Page1());

              // push replacement dengan get x
              // Get.off(
              //   Page1(),
              // );

              // menggunakan push named dengan get x
              Get.toNamed("/page1");
            },
            child: Text(
              "Page 1",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // dengan get x
              // Get.to(
              //   Page2(),
              // );

              // menggunakan push named dengan get x
              Get.toNamed("/page2");
            },
            child: Text(
              "Page 2",
            ),
          ),
        ],
      ),
    );
  }
}
