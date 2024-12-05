import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPage.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page1.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page2.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page3.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Page 5",
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
            Text("Page 5"),
            ElevatedButton(
              onPressed: () {
                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RouteManagementPage(),
                //   ),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan get x
                // Get.offAll(
                //   RouteManagementPage(),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan route named
                Get.offAllNamed("/home");
              },
              child: Text(
                "Back to home >>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page2(),
                //   ),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan get x
                // Get.offAll(
                //   page2(),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan route named
                Get.offAllNamed("/page2");
              },
              child: Text(
                "Back to Page 2 >>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page3(),
                //   ),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan get x
                // Get.offAll(
                //   page3(),
                // );

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan dengan route named
                Get.offAllNamed("/page3");
              },
              child: Text(
                "Back to Page 3 >>",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
