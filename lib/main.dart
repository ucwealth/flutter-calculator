import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Calculator',
    home: Calculator(),
  ));
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = "0";
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // this will take space as minimum as posible(to center)
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 385,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  alignment: Alignment.bottomRight,
                  color: Colors.black87,
                  child: Text(
                    result,
                    style: TextStyle(
                        fontSize: 70, color: Colors.white, fontFamily: 'Arial'),
                  ),
                )
              ],
            ),
            Divider(color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  "AC",
                  Colors.grey,
                ),
                Button(
                  "+/-",
                  Colors.grey,
                ),
                Button(
                  "%",
                  Colors.grey,
                ),
                Button(
                  "/",
                  Colors.orange,
                ),
              ],
            ),
            Divider(color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  "7",
                  Colors.grey.shade800,
                ),
                Button(
                  "8",
                  Colors.grey.shade800,
                ),
                Button(
                  "9",
                  Colors.grey.shade800,
                ),
                Button(
                  "X",
                  Colors.orange,
                ),
              ],
            ),
            Divider(color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  "4",
                  Colors.grey.shade800,
                ),
                Button(
                  "5",
                  Colors.grey.shade800,
                ),
                Button(
                  "6",
                  Colors.grey.shade800,
                ),
                Button(
                  "-",
                  Colors.orange,
                ),
              ],
            ),
            Divider(color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  "1",
                  Colors.grey.shade800,
                ),
                Button(
                  "2",
                  Colors.grey.shade800,
                ),
                Button(
                  "3",
                  Colors.grey.shade800,
                ),
                Button(
                  "+",
                  Colors.orange,
                ),
              ],
            ),
            Divider(color: Colors.transparent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  "0",
                  Colors.grey.shade800,
                ),
                Button(
                  "00",
                  Colors.grey.shade800,
                ),
                Button(
                  ".",
                  Colors.grey.shade800,
                ),
                Button(
                  "=",
                  Colors.orange,
                ),
              ],
            ),
            Divider(color: Colors.transparent),
          ],
        ),
      ),
    );
  }

  Widget Button(String text, Color color) {
    return Container(
      child: RaisedButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          shape: CircleBorder(),
          color: color,
          padding: EdgeInsets.all(18)),
    );
  }
}
