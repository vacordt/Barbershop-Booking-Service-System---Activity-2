import 'package:flutter/material.dart';

class TwoButtonsColumn extends StatelessWidget {
  const TwoButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Book Now'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
