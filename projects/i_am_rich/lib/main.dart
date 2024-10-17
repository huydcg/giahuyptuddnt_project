import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text("I am rich"),
          backgroundColor: Colors.orange,
          centerTitle: true,
          // leading: Icon(Icons.arrow_back_ios),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/rich.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    ),
  );
}
