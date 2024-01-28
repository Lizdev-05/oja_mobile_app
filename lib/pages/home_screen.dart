import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odja/odja_page.dart';

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
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildProductCategory(index: 0, name: "All Products"),
                _buildProductCategory(index: 1, name: "Men's Wears"),
                _buildProductCategory(index: 2, name: "Womens' Wears"),
                _buildProductCategory(index: 3, name: "Wears"),
                _buildProductCategory(index: 4, name: "Gadgets"),
              ],
            ),
          ),
          const Expanded(child: OdjaPage()),
        ],
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = index;
          });
        },
        child: Container(
          width: 120,
          height: 40,
          margin: const EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected == index
                ? const Color.fromARGB(255, 255, 115, 64)
                : const Color.fromARGB(255, 200, 118, 88),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            name,
            style: GoogleFonts.lato(
              color: Colors.white,
            ),
          ),
        ));
  }
}

// https://fakestoreapi.com/products/categories
