import 'package:get/get.dart';

class Switchstatuscontroller extends GetxController {
  Map<int, bool> switches = {};

  void updateSwitch(int key, bool value) {
    if (switches.containsKey(
      key,
    )) {
      switches.remove(key);
    } else {
      switches.addAll({key: value});
    }
    update();
  }
}
