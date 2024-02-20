import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/ui/app_config_ui.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: Asuka.builder,
      title: 'Job Timer',
      theme: AppConfigUI.theme,
      routerConfig: Modular.routerConfig,
    );
  }
}
