import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  final AudioPlayer _player = AudioPlayer();

  Xylophone({super.key}); // Khởi tạo AudioPlayer

  // Tạo một phương thức để phát âm thanh
  void playSound(int noteNumber) async {
    await _player.play(AssetSource('note$noteNumber.flac')); // Chơi âm thanh
  }

  // Tạo phương thức để xây dựng nút
  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, noteNumber: 1),
          buildKey(color: Colors.orange, noteNumber: 2),
          buildKey(color: Colors.yellow, noteNumber: 3),
          buildKey(color: Colors.green, noteNumber: 4),
          buildKey(color: Colors.teal, noteNumber: 5),
          buildKey(color: Colors.blue, noteNumber: 6),
          buildKey(color: Colors.purple, noteNumber: 7),
        ],
      ),
    );
  }
}
