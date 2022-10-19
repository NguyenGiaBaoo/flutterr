import 'package:flutter/material.dart';
import 'package:giaodien/trochoi.dart';
import 'package:giaodien/chude.dart';
import 'package:giaodien/cuahang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaaaaaa',
      home: trochoi(),
    );
  }
}
