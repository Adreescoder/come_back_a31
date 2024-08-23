import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final logic = Get.put(SettingLogic());

  @override
  Widget build(BuildContext context) {
    return const Text("Setting");
  }
}
