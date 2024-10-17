import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicee() {
    setState(
      () {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                dicee();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Image.asset('assets/images/dicee$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                dicee();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Image.asset('assets/images/dicee$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
