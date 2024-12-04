import 'package:get/get.dart';

class ReactiveVariablesController extends GetxController {
  // reactive integer
  RxInt dataInt = 0.obs;
  RxString dataString = "halo".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  var dataSet = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> dataMap = {
    "id": 1,
    "nama": "Paijo",
    "umur": 32,
  }.obs;

  int angkaSelanjutnya = 4;

  void gantiNama() {
    dataMap['nama'] = "Sumanto";
  }

  void tambahDataSet() {
    dataSet.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahDataSet() {
    dataSet.value = {99, 2, 3};
  }

  void tambahDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahDataList() {
    dataList[0] = 99;
  }

  void increment() => dataInt++;
  void decrement() => dataInt--;

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  void changeDataBool() {
    // dataBool.value = !dataBool.value;
    dataBool.toggle();
  }

  void updateDataString() {
    // updata data
    // access value dari variable rx menggunakan .value
    dataString.value = "Halo dekk dah update nih";
  }

  void resetDataString() {
    dataString.value = "halo";
  }
}
