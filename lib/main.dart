import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/BindingsBuilderController.dart';
import 'package:state_management_getx_flutter/controllers/DependencyManagerController.dart';
import 'package:state_management_getx_flutter/controllers/MainController.dart';
import 'package:state_management_getx_flutter/controllers/ReactiveVariablesController.dart';
import 'package:state_management_getx_flutter/pages/BindingsBuilderPage.dart';
import 'package:state_management_getx_flutter/pages/CounterPage.dart';
// import 'package:state_management_getx_flutter/pages/DependencyManagerPage.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPage.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page1.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page2.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page3.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page4.dart';
import 'package:state_management_getx_flutter/pages/RouteManagementPages/Page5.dart';
// import 'package:state_management_getx_flutter/pages/RxVariablesPage.dart';
// import 'package:state_management_getx_flutter/pages/WorkersPage.dart';
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
  MyApp({super.key});
  // final dependencyC = Get.put(DependencyManagerController());

  // penggunaan lazy put yaitu controller hanya dibangun ketika dibutuhkan saja
  final dependencyC = Get.lazyPut(
    () => DependencyManagerController(),
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BindingsBuilderPage(),

      // route named tanpa get x
      // routes: {
      //   "home": (context) => RouteManagementPage(),
      //   "page 1": (context) => Page1(),
      //   "page 2": (context) => Page2(),
      //   "page 3": (context) => Page3(),
      //   "page 4": (context) => Page4(),
      //   "page 5": (context) => Page5(),
      // },

      // route named dengan get x
      getPages: [
        GetPage(
          name: "/home",
          page: () => RouteManagementPage(),
        ),
        GetPage(
          name: "/page1",
          page: () => Page1(),
        ),
        GetPage(
          name: "/page2",
          page: () => Page2(),
        ),
        GetPage(
          name: "/page3",
          page: () => Page3(),
        ),
        GetPage(
          name: "/page4",
          page: () => Page4(),
        ),
        GetPage(
          name: "/page5",
          page: () => Page5(),
        ),
        GetPage(
          name: "/counterPage",
          page: () => CounterPage(),
          // binding: BindingsBuilder.put(
          //   () => BindingsBuilderController(),
          // ),
          // jika menggunakan banyak binding sekaligus
          bindings: [
            BindingsBuilder.put(
              () => BindingsBuilderController(),
            ),
            // BindingsBuilder.put(
            //   () => MainController(),
            // ),
            // BindingsBuilder.put(
            //   () => ReactiveVariablesController(),
            // ),
          ],
        ),
      ],
    );
  }
}
