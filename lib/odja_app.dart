import 'package:flutter/material.dart';
import 'package:odja/odja_page.dart';

class OdjaApp extends StatelessWidget {
  const OdjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buy Better!"),
          leading: Icon(Icons.card_travel_outlined),
        ),
        body: OdjaPage(),
      ),
    );
  }
}
