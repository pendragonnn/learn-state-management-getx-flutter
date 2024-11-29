import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Dialog GetX",
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
            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     title: Text("Title"),
            //     content: Text("Ini adalah isi dari konten alert dialog"),
            //   ),
            // );

            // dengan GetX
            Get.defaultDialog(
                title: "INI JUDUL",
                // middleText: "Ini adalah isi dari konten alert dialog",
                content: Text(
                  "halo",
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Done"),
                  ),
                ]);
          },
          child: Text(
            "Open Dialog",
          ),
        ),
      ),
    );
  }
}
