import 'package:flutter/material.dart';

class FlexibleColumn extends StatelessWidget {
  const FlexibleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.teal,
              child: const Center(child: Text('Flexible 1', style: TextStyle(color: Colors.white))),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.teal.shade200,
              child: const Center(child: Text('Flexible 2', style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
