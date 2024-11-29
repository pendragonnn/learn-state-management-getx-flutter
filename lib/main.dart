import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/pages/SnackBarPage.dart';

void main() {
  runApp(MyApp());
}

// state management getx implementation
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Snackbarpage(),
    );
  }
}


