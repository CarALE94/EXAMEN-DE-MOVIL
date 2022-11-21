import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MENDOZA ALCIVAR ALEJANDRO JAVIER',
      theme: ThemeData(
        primarySwatch: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ListScreen(title: 'EQUIPOS SUDAMERICANOS AL MUNDIAL'),
    );
  }
}
