import 'package:flutter/material.dart';
import 'dart:math';

// Creates a Material App
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

// Creates a Scaffold with
// appbar using Stateless widget
// ignore: use_key_in_widget_constructors
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
<<<<<<< HEAD
        title: const Text('Magic_8_ball'),
=======
        title: const Text('GeeksforGeeks'),
>>>>>>> 9f19162a21fa2199da734d202ed4273d344868d2
      ),
      body: const Ball(),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  // ignore: use_super_parameters
  const Ball({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            // Random.nextInt(n) returns a random integer from 0 to n-1
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        // Adding images
        child: Image.asset('assets/images/ball$ballNumber.png'),
      ),
    );
  }
}
