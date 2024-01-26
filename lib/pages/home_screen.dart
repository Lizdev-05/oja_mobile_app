import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Products",
            style: GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProductCategory(index: 0, name: "All Products"),
            ],
          )
        ],
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return Container(
      // height: 40,
      // width: 100,
      margin: EdgeInsets.only(top: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 255, 115, 64),
        color: isSelected == index
            ? const Color.fromARGB(255, 255, 115, 64)
            : Color.fromARGB(145, 255, 115, 64),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        name,
        style: GoogleFonts.lato(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
