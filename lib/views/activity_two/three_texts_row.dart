import 'package:flutter/material.dart';

class ThreeTextsRow extends StatelessWidget {
  const ThreeTextsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Barber'),
        Text('Booking'),
        Text('System'),
      ],
    );
  }
}
