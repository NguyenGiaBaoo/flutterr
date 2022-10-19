import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Flutter - MaterialStateProperty Size")),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: const Text("Click Me"),
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(250, 75))),
      )),
    ),
  ));
}
