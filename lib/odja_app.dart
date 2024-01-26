import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 115, 64),
          title: Text(
            "Buy Better!",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          leading: Icon(Icons.card_travel_outlined, color: Colors.white),
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
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
          selectedItemColor: const Color.fromARGB(255, 255, 115, 64),
          unselectedItemColor: const Color.fromARGB(255, 67, 65, 65),
        ),
        // body: const OdjaPage(),
        body: pages[activeIndex],
      ),
    );
  }
}
