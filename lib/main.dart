import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  //functon to change my dice face
  void changeDIceFace() {
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
      leftDicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //left Dice
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDIceFace();
                },
                child: Image.asset('images/dice$leftDicenumber.png')),
          ),

          //right Dice
          Expanded(
              child: TextButton(
                  onPressed: () {
                    changeDIceFace();
                  },
                  child: Image.asset('images/dice$rightDicenumber.png')))
        ],
      ),
    );
  }
}
