import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// state management getx implementation
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

// stateless implementation
// class HomePage extends StatelessWidget {
//   // const HomePage({super.key});

//   int data = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[300],
//         title: Center(
//           child: Text(
//             "Stateless",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "${data}", // nilai data yang ditampilkan tidak berubah,namun aslinya jika dilihat di debug console nilainya berubah
//               // diperlukan stateful component agar nilai tampilan data bisa berubah sesuai dengan tombol yang ditekan
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     data -= 1;
//                     print(data);
//                   },
//                   child: Text("-"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     data += 1;
//                     print(data);
//                   },
//                   child: Text("+"),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// stateful implementation
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int data = 0;
//   @override
//   Widget build(BuildContext context) {
//     // kekurangan stateful
//     // selalu melakukan render ulang dalam 1 komponen (Scaffold)
//     print("rendering");
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[300],
//         title: Center(
//           child: Text(
//             "Stateful",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "${data}",
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       data += 1;
//                     });
//                   },
//                   child: Text(
//                     "+",
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       data -= 1;
//                     });
//                   },
//                   child: Text(
//                     "-",
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// state management getx implementation
class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  final myController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    // tidak di-build ulang
    print("render ulang?");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "State Management GetX",
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
            // bungkus dengan Obx agar terlihat perubahan
            Obx(
              () => Text(
                "${myController.data.value}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    myController.decrement();
                  },
                  child: Text(
                    "-",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    myController.increment();
                  },
                  child: Text(
                    "+",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs; // .bs => state yang akan selalu dipantau perubahannya
  increment() => data++;
  decrement() => data--;
}
