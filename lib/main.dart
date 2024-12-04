import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/pages/RxVariablesPage.dart';
// import 'package:state_management_getx_flutter/pages/BottomSheetPage.dart';
// import 'package:state_management_getx_flutter/pages/ReactiveStateManagementPage.dart';
// import 'package:state_management_getx_flutter/pages/SimpleStateManagementPage.dart';
// import 'package:state_management_getx_flutter/pages/DialogPage.dart';
// import 'package:state_management_getx_flutter/pages/SnackBarPage.dart';

void main() {
  runApp(MyApp());
}

// state management getx implementation
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: RxVariablesPage(),
    );
  }
}
