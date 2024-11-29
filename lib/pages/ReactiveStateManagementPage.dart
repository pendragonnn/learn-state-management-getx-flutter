import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/MainController.dart';

class ReactiveStateManagementPage extends StatelessWidget {
  // const SimpleStateManagementPage({super.key});
  // menghubungkan widget dengan controller yang sudah dibuat
  final mainC = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Simple State Management GetX",
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
            Obx(
              () => Text(
                // menggunakan state dari controller
                "${mainC.data.value}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // memanggil fungsi increment dari controller
                mainC.increment();
              },
              child: Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}
