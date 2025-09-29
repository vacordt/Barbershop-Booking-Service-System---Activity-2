import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'activity_two/activity_two_home.dart';

class HomeMaterialView extends StatefulWidget {
  const HomeMaterialView({super.key});

  @override
  State<HomeMaterialView> createState() => _HomeMaterialViewState();
}

class _HomeMaterialViewState extends State<HomeMaterialView> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    PageOne(),
    PageTwo(),
    ActivityTwoHome(),
  ];

  void _setIndex(int index) {
    if (index >= 0 && index < _pages.length) {
      setState(() => _currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Barbershop Booking')),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Guest'),
              accountEmail: Text('guest@barbershop.app'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Page One'),
              onTap: () {
                Navigator.pop(context);
                _setIndex(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.grid_view),
              title: const Text('Page Two'),
              onTap: () {
                Navigator.pop(context);
                _setIndex(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_module),
              title: const Text('Activity 2'),
              onTap: () {
                Navigator.pop(context);
                _setIndex(2);
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _setIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'One'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Two'),
          BottomNavigationBarItem(icon: Icon(Icons.view_module), label: 'Activity 2'),
        ],
      ),
    );
  }
}
