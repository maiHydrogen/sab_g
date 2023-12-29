import 'package:flutter/material.dart';

class SquareTile1 extends StatelessWidget {
  final String imagePath;
  const SquareTile1({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        imagePath,
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}

class SquareTile2 extends StatelessWidget {
  final String imagePath;
  const SquareTile2({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
