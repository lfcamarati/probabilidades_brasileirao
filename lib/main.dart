import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:probabilidades_brasileirao/ui/home.ui.dart';

/// https://github.com/mitesh77/Best-Flutter-UI-Templates (VER!!!!!)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: Colors.white,
      overlayOpacity: 0.8,
      child: const MaterialApp(
        title: 'Probabilidades Futebol',
        home: HomeUI(),
      ),
    );
  }
}
