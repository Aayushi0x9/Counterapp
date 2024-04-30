import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/Controller/countercontroller.dart';
import 'package:timer_app/Controller/theme_controller.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeController(),
        ),
        ChangeNotifierProvider(
          create: (_) => CounterController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
