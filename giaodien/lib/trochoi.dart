import 'dart:html';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:giaodien/theme.dart';

class trochoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    ThemeData(primaryColor: kcolorprimary);
    // TODO: implement build

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'image/ruoi.jpeg',
                    width: screenWidth,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'Drosophila là tên khoa học của một'
                ' chi của loài nào?',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, bottom: 70, top: 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      _createButton(btnText: 'Mèo', btnColor: Colors.blueGrey),
                      const SizedBox(
                        height: 30,
                      ),
                      _createButton(btnText: 'Ruồi', btnColor: Colors.blueGrey),
                      const SizedBox(
                        height: 30,
                      ),
                      _createButton(btnText: 'Cừu', btnColor: Colors.blueGrey),
                      const SizedBox(
                        height: 30,
                      ),
                      _createButton(btnText: 'Chuột', btnColor: Colors.blueGrey)
                    ]),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.all(25.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Trogiup'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.safety_check,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.all(25.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Trogiup'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.safety_check,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(25.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Trogiup'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.safety_check,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _createButton(
    {int? idx,
    String? btnText,
    Color? btnColor,
    Color textColor = Colors.black}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        padding: const EdgeInsets.all(25.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
    child: Text(btnText!, style: TextStyle(fontSize: 20)),
    onPressed: () {},
  );
}
