import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page5.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Page 4",
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
            Text("Page 4"),
            ElevatedButton(
              onPressed: () {
                // pindah halaman tanpa get x
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page5(),
                //   ),
                // );

                // pindah halaman dengan get x
                // Get.to(
                //   "/page5",
                // );

                // pindah halaman dengan route named
                Get.toNamed("/page5");
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
