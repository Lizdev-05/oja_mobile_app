import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odja/odja_page.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odja/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [];
  int isSelected = 0;
  String categoryName = "";
  List<Product> products = [];

  //Get All Products
  Future<void> getProductData() async {
    String url = "https://fakestoreapi.com/products/";
    Uri convertedUri = Uri.parse(url);
    var result = await http.get(convertedUri);
    if (result.statusCode == 200) {
      List reusltingList = jsonDecode(result.body) as List;

      reusltingList.forEach(
        (element) {
          products.add(Product.fromJson(element));
        },
      );
    }
    setState(() {});
  }

  // Get category by name
  Future<void> getProductCategory() async {
    String urlCategory = "https://fakestoreapi.com/products/categories";
    Uri convertedUri = Uri.parse(urlCategory);
    var categoryResult = await http.get(convertedUri);
    if (categoryResult.statusCode == 200) {
      List categoryList = jsonDecode(categoryResult.body) as List;
      categories = ["All"];
      categoryList.forEach(
        (element) {
          categories.add(element);
        },
      );
    }
    setState(() {});
  }

  Future<void> getProductByCategoryName() async {
    String urlCategoryByName =
        "https://fakestoreapi.com/products/category/$categoryName";
    Uri convertedUri = Uri.parse(urlCategoryByName);
    var categoryNameResult = await http.get(convertedUri);
    if (categoryNameResult.statusCode == 200) {
      List categoryListOfName = jsonDecode(categoryNameResult.body) as List;
      products =
          categoryListOfName.map<Product>((e) => Product.fromJson(e)).toList();
      setState(() {});
    }
    setState(() {});
  }

  @override
  void initState() {
    getProductCategory();
    getProductData();
    super.initState();
  }

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
            // child: ListView(
            // scrollDirection: Axis.horizontal,
            //   children: [
            //     _buildProductCategory(index: 0, name: "All Products"),
            //     _buildProductCategory(index: 1, name: "Men's Wears"),
            //     _buildProductCategory(index: 2, name: "Womens' Wears"),
            //     _buildProductCategory(index: 3, name: "Wears"),
            //     _buildProductCategory(index: 4, name: "Gadgets"),
            //   ],
            // ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _buildProductCategory(
                      index: index, name: categories[index]);
                }),
          ),
          Expanded(
              child: OdjaPage(
            products: products,
          )),
        ],
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
        onTap: () {
          setState(() {
            categoryName = categories[index];
            isSelected = index;
            if (categoryName == "All") {
              getProductData();
            } else {
              getProductByCategoryName();
            }
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
            // name,
            name,
            style: GoogleFonts.lato(
              color: Colors.white,
            ),
          ),
        ));
  }
}
