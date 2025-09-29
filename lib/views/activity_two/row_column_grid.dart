import 'package:flutter/material.dart';

class RowColumnGrid extends StatelessWidget {
  const RowColumnGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gridCell('A'),
            gridCell('B'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gridCell('C'),
            gridCell('D'),
          ],
        ),
      ],
    );
  }

  Widget gridCell(String label) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        border: Border.all(color: Colors.teal),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(label, style: const TextStyle(fontSize: 18))),
    );
  }
}
