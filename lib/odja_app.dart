import 'package:flutter/material.dart';
import 'package:odja/odja_page.dart';
import 'package:odja/pages/favorite_screen.dart';
import 'package:odja/pages/home_screen.dart';
import 'package:odja/pages/profile_screen.dart';

class OdjaApp extends StatefulWidget {
  const OdjaApp({super.key});

  @override
  State<OdjaApp> createState() => _OdjaAppState();
}

class _OdjaAppState extends State<OdjaApp> {
  int activeIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buy Better!"),
          leading: Icon(Icons.card_travel_outlined),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_sharp), label: "Profile"),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 16, 135, 233),
          unselectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
        ),
        // body: const OdjaPage(),
        body: pages[activeIndex],
      ),
    );
  }
}
