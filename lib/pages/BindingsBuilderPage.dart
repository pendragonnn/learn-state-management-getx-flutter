import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:state_management_getx_flutter/controllers/BindingsBuilderController.dart';
// import 'package:state_management_getx_flutter/pages/CounterPage.dart';

class BindingsBuilderPage extends StatelessWidget {
  BindingsBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Bindings Builder",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // tanpa route named
            // Get.to(
            // () => CounterPage(),
            // tidak disarankan seperti ini jika hanya 1 controller
            // binding: BindingsBuilder(
            // () => Get.put(
            //   // BindingsBuilderController(),
            // ),
            // ),

            // binding: BindingsBuilder.put(
            //   () => BindingsBuilderController(),
            // ),

            // atau menggunakan lazy put
            // binding: BindingsBuilder(
            //   () => Get.lazyPut(
            //     () => BindingsBuilderController(),
            //   ),
            // ),
            // );

            // dengan route named dan binding
            Get.toNamed("/counterPage");
          },
          child: Text(
            "Counter Page >>",
          ),
        ),
      ),
    );
  }
}
