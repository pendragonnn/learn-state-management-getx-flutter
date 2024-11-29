import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Bottom Sheet GetX",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // tanpa GetX
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 300,
            //     color: Colors.amber,
            //     child: ListView(
            //       children: [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("Home"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.person),
            //           title: Text("Profile"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text("Setting"),
            //         ),
            //       ],
            //     ),
            //   ),
            // );

            // dengan GetX
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.red,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("Open Bottom Sheet"),
        ),
      ),
    );
  }
}
