import 'package:flutter/material.dart';

class NavbarRow extends StatelessWidget {
  const NavbarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.home, size: 32),
        Icon(Icons.calendar_today, size: 32),
        Icon(Icons.person, size: 32),
      ],
    );
  }
}
