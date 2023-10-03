import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SwitchScreen extends StatefulWidget {
  SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool currentvalue = false;

  List title = ['setting', 'menu', 'valid', 'available', 'invalid'];

  Switchstatuscontroller switchstatuscontroller =
      Get.put(Switchstatuscontroller());
  @override
  void initState() {
    switchstatuscontroller = Switchstatuscontroller();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => GetBuilder<Switchstatuscontroller>(
          builder: (controller) {
            return ListTile(
              title: Text(title[index]),
              trailing: Switch.adaptive(
                value: controller.switches.containsKey(index) ? true : false,
                onChanged: (value) {
                  controller.updateSwitch(index, value);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
