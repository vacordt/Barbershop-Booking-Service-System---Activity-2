import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            color: Colors.teal,
            child: const Center(child: Text('Barber 1', style: TextStyle(color: Colors.white))),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            color: Colors.teal.shade200,
            child: const Center(child: Text('Barber 2', style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}
