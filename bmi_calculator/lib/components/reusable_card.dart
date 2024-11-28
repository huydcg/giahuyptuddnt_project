import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.colour,
    this.cardChild,
    this.onTap,
    required Null Function() onPress,
  }) : super(key: key);

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Xử lý tap nếu được cung cấp
      child: Container(
        margin: const EdgeInsets.all(15.0), // Giữ nguyên margin cố định
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0), // Bo góc cố định
        ),
        child: cardChild, // Giữ nguyên nội dung
      ),
    );
  }
}
