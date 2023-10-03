import 'package:get/get.dart';

import 'class_employ.dart';

class Employcontroller extends GetxController {
  List<Employee> list = [];
  @override
  void onInit() {
    List.generate(
        4,
        (index) =>
            list.add(Employee(name: 'nameList$index', isselected: false)));
    super.onInit();
  }
}
