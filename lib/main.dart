import 'package:chip_widget_codealgo/chip_widget_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChipWidgetPage(),
    );
  }
}
