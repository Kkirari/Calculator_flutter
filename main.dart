import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btnTxt, Color btnColor, Color txtColor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btnTxt,
          style: TextStyle(
            fontSize: 35,
            color: txtColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: btnColor,
          shape: CircleBorder(),
          padding: EdgeInsets.all(25),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 238, 234, 1.000),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(119, 107, 93, 1.000),
                        fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //logic button here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(85, 20, 85, 20),
                    shape: StadiumBorder(),
                    primary: Color.fromRGBO(119, 107, 93, 1.000),
                  ),
                  child: Center(
                    child: Text(
                      'Clear',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ),
                calcButton('/', const Color.fromRGBO(119, 107, 93, 1.000),
                    Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('8', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('9', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('x', const Color.fromRGBO(119, 107, 93, 1.000),
                    Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('5', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('6', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('-', const Color.fromRGBO(119, 107, 93, 1.000),
                    Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('1', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('2', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('3', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('+', const Color.fromRGBO(119, 107, 93, 1.000),
                    Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //logic button here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                    shape: StadiumBorder(),
                    primary: Color.fromRGBO(176, 166, 149, 1.000),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                calcButton('.', const Color.fromRGBO(176, 166, 149, 1.000),
                    Colors.white),
                calcButton('=', const Color.fromRGBO(119, 107, 93, 1.000),
                    Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
