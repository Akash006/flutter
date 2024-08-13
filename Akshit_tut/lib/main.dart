import 'package:akshit_tut/widgets/dismissable.dart';
import 'package:akshit_tut/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:akshit_tut/widgets/button.dart';
import 'package:akshit_tut/widgets/list_grid.dart';
import 'package:akshit_tut/widgets/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 30 Widgets',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      home: MyDrawerWidget(),
    );
  }
}
