import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page3.dart';

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
                // back tanpa get x
                // Navigator.pop(context);

                // back dengan get x
                Get.to(
                  Page3(),
                );
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
