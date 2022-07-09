import 'package:flutter/material.dart';

import '../../../feature/export/export.dart';

class SettingButtonWidget extends StatelessWidget {
  const SettingButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: const Icon(Icons.settings),
      onPressed: () async => Get.to(const SettingView()),
    );
  }
}