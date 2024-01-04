import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  String greeting = '';

  void setGreeting() {
    final date = DateTime.now();

    if (date.hour >= 5 && date.hour < 12) {
      greeting = 'Bom dia,';
    } else if (date.hour >= 12 && date.hour < 18) {
      greeting = 'Boa tarde,';
    } else {
      greeting = 'Boa noite,';
    }
  }

  void changeIndex(int i) {
    setState(() {
      debugPrint(i.toString());
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: <Widget>[
          Builder(builder: (context) {
            setGreeting();
            return Text(
              '$greeting Gabriel',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            );
          }),
          const Text('oi'),
          const Text('oi'),
          const Text('oi'),
          const Text('oi'),
          const Text('oi'),
        ]),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => changeIndex(i),
      ),
    );
  }
}
