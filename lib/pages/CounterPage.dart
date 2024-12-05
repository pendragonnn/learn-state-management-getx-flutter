import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/BindingsBuilderController.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});
  final BindingsBuilderController counterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Counter Page",
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
            Obx(() => Text(
                  "${counterC.data}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterC.increment();
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterC.decrement();
                  },
                  child: Text("-"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
      ),
    );
  }
}
