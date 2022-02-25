import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            setState(() {
              if (numOfItems > 1) {
                numOfItems--;
              }
            });
          },
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            minimumSize: Size(16, 32),
          ),
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 10),
        Text(
          numOfItems.toString().padLeft(2, "0"),
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            setState(() {
              numOfItems++;
            });
          },
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            minimumSize: Size(16, 32),
          ),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
