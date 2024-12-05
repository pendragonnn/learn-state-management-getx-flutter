import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPage.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page1.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page2.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page3.dart';

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
                // back tanpa get x
                // Navigator.pop(context);

                // back dengan get x
                Get.back();

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                Get.offAll(RouteManagementPage());
              },
              child: Text(
                "Back to home >>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // back tanpa get x
                // Navigator.pop(context);

                // back dengan get x
                Get.back();

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                Get.offAll(
                  Page2(),
                );
              },
              child: Text(
                "Back to Page 2 >>",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // back tanpa get x
                // Navigator.pop(context);

                // back dengan get x
                Get.back();

                // menghapus semua layer sampai ke halaman tujuan dan langsung kembali ke halaman tujuan
                Get.offAll(Page3());
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
