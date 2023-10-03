import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Employrcontroller.dart';

class EmployeListScreen extends StatefulWidget {
  const EmployeListScreen({Key? key}) : super(key: key);

  @override
  State<EmployeListScreen> createState() => _EmployeListScreenState();
}

class _EmployeListScreenState extends State<EmployeListScreen> {
  List nameList = ['aasha', 'vijay', 'Romil', 'Honey'];
  Employcontroller employcontroller = Get.put(Employcontroller());
  @override
  void initState() {
    employcontroller = Employcontroller();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: GetBuilder<Employcontroller>(
        builder: (controller) {
          return ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                controller.list[index].isselected =
                    !controller.list[index].isselected;
              },
              child: Container(
                height: 40,
                width: 300,
                color: controller.list[index].isselected == index
                    ? Colors.red.shade200
                    : Colors.white,
                child: Text(nameList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
