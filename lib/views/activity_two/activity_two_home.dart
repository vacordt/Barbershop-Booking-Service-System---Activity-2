import 'package:flutter/material.dart';
import 'three_texts_row.dart';
import 'two_buttons_column.dart';
import 'container_text.dart';
import 'profile_card.dart';
import 'expanded_row.dart';
import 'navbar_row.dart';
import 'stack_background.dart';
import 'flexible_column.dart';
import 'chat_bubble.dart';
import 'row_column_grid.dart';

class ActivityTwoHome extends StatelessWidget {
  const ActivityTwoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Activity Layouts')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ThreeTextsRow(),
          SizedBox(height: 24),
          TwoButtonsColumn(),
          SizedBox(height: 24),
          ContainerText(),
          SizedBox(height: 24),
          ProfileCard(),
          SizedBox(height: 24),
          ExpandedRow(),
          SizedBox(height: 24),
          NavbarRow(),
          SizedBox(height: 24),
          StackBackground(),
          SizedBox(height: 24),
          FlexibleColumn(),
          SizedBox(height: 24),
          ChatBubble(),
          SizedBox(height: 24),
          RowColumnGrid(),
        ],
      ),
    );
  }
}
