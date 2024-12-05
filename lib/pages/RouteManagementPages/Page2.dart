import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            Text("Page 2"),
            ElevatedButton(
              onPressed: () {
                // pindah halaman tanpa get x
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page3(),
                //   ),
                // );

                // pindah halaman dengan get x
                // Get.to(
                //   "/page3",
                // );

                // pindah halaman dengan route named
                Get.toNamed("/page3");
              },
              child: Text(
                "Next >>",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
