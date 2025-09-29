import 'package:flutter/material.dart';

class StackBackground extends StatelessWidget {
  const StackBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpg', // Make sure to copy the image to assets folder
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
