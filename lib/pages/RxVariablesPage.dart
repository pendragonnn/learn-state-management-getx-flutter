import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx_flutter/controllers/ReactiveVariablesController.dart';

class RxVariablesPage extends StatelessWidget {
  final reactiveC = Get.put(ReactiveVariablesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
          child: Text(
            "Reactive Variables",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataInt}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => reactiveC.increment(),
                      child: Text("+"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reactiveC.decrement(),
                      child: Text("-"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataString}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => reactiveC.updateDataString(),
                      child: Text("Update"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reactiveC.resetDataString(),
                      child: Text("Reset"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataDouble}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => reactiveC.incrementDouble(),
                      child: Text("+"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reactiveC.decrementDouble(),
                      child: Text("-"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataBool}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => reactiveC.changeDataBool(),
                  child: Text("Change"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataList}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => reactiveC.tambahDataList(),
                      child: Text("Tambah Data"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reactiveC.ubahDataList(),
                      child: Text("Ubah Data"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "${reactiveC.dataSet}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => reactiveC.tambahDataSet(),
                      child: Text("Tambah Data"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => reactiveC.ubahDataSet(),
                      child: Text("Ubah Data"),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 3,
            ),
            Row(
              children: [
                Expanded(
                  child: Obx(
                    () => ListTile(
                      leading: CircleAvatar(
                        child: Text("${reactiveC.dataMap['id']}"),
                      ),
                      title: Text("${reactiveC.dataMap['nama']}"),
                      subtitle: Text("${reactiveC.dataMap['umur']} tahun"),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    reactiveC.gantiNama();
                  },
                  child: Text("ganti"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
