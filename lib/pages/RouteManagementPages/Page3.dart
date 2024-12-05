import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Page 3",
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
            Text("Page 3"),
            ElevatedButton(
              onPressed: () {
                // pindah halaman tanpa get x
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Page4(),
                //   ),
                // );

                // pindah halaman dengan get x
                // Get.to(
                //   "/page4",
                // );

                // pindah halaman dengan route named
                Get.toNamed("/page4");
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
