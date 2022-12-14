import 'package:flutter/material.dart';

class chude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      Container(
        color: Color.fromARGB(255, 233, 248, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _container_stack('0', 'image/icon/icon-head/icon-star.png',
                      Color.fromARGB(0, 0, 0, 0), 35, 35),
                  _container_stack('0', 'image/icon/icon-head/icon-money.png',
                      Colors.green, 30, 30),
                  _container_stack('Max', 'image/icon/icon-head/icon-heart.png',
                      Colors.green, 35, 35),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "CHỌN CHỦ ĐỀ CÂU HỎI",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            overflow: TextOverflow.clip,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
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
                      _createButton(
                          btnText: 'Khoa Học', btnColor: Colors.green),
                      const SizedBox(
                        height: 35,
                      ),
                      _createButton(btnText: 'Văn Học', btnColor: Colors.green),
                      const SizedBox(
                        height: 35,
                      ),
                      _createButton(btnText: 'Lịch Sử', btnColor: Colors.green),
                      const SizedBox(
                        height: 35,
                      ),
                      _createButton(btnText: 'Địa Lí', btnColor: Colors.green),
                      const SizedBox(
                        height: 35,
                      ),
                      _createButton(btnText: 'Đố Vui', btnColor: Colors.green),
                      const SizedBox(
                        height: 35,
                      ),
                      _createButton(
                          btnText: 'Đố Không Vui', btnColor: Colors.green)
                    ]),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                //mainAxisAlignment: MainAxisAlignment.end,

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 81,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 2, color: Colors.black12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _cloumn(
                                'Hồ sơ',
                                Icons.person,
                                Colors.black38,
                              ),
                              _cloumn('Lịch sử', Icons.access_time_filled,
                                  Colors.black38),
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Color.fromARGB(0, 0, 0, 0),
                              ),
                              _cloumn('Cửa hàng', Icons.shopping_cart,
                                  Colors.black38),
                              _cloumn('Menu', Icons.menu, Colors.black38),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 42,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Icon(
                        Icons.home,
                        color: Color.fromARGB(213, 0, 0, 0),
                        size: 60,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ]));
  }
}

Widget _cloumn(String text, IconData icon, Color color) {
  final kq = TextButton(
    onPressed: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: color,
          ),
        ),
      ],
    ),
  );
  return kq;
}

Widget _container_stack(
    String text, String icon, Color add_color, double width, double height) {
  final kq = Stack(
    alignment: AlignmentDirectional.centerStart,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Container(
          alignment: Alignment.center,
          width: 75,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      Image.asset(
        icon,
        width: width,
        height: height,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(72, 0, 0, 0),
        child: IconButton(
          icon: Icon(
            Icons.add_circle,
            color: add_color,
            size: 25,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
  return kq;
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
