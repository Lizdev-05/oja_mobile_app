import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:odja/product.dart';

class OdjaPage extends StatefulWidget {
  const OdjaPage({super.key});

  @override
  State<OdjaPage> createState() => _OdjaPageState();
}

class _OdjaPageState extends State<OdjaPage> {
  List<Product> products = [];

  Future<void> getProductData() async {
    String url = "https://fakestoreapi.com/products/";
    Uri convertedUri = Uri.parse(url);
    var result = await http.get(convertedUri);
    if (result.statusCode == 200) {
      List reusltingList = jsonDecode(result.body) as List;
      print("Result: " + reusltingList.toString());
      reusltingList.forEach(
        (element) {
          products.add(Product.fromJson(element));
        },
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    getProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leadingWidth: 100,
        leading: Container(
          margin: const EdgeInsets.only(left: 8),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnIdelCqs6_RCXLXk718e2HL90dSyxj382yg&usqp=CAU",
                fit: BoxFit.cover,
                width: 20,
                height: 20,
              )),
        ),
        actions: const [
          Icon(Icons.notifications),
        ],
      ),
      body: Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, top: 15),
          child: products.isEmpty
              ? Center(
                  child: Text(
                  'No products found.',
                  style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
                ))
              : ListView.separated(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    Product product = products[index];
                    return Container(
                      // height: 50,
                      // color: Colors.purple,
                      child: ListTile(
                        title: Text(
                          product.title,
                          style: GoogleFonts.lato(
                              color: Color.fromARGB(255, 43, 41, 41),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Subtitle of the item",
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 46, 46, 46),
                            fontSize: 15,
                          ),
                        ),
                        leading: Image.network(
                          product.image,
                          fit: BoxFit.cover,
                          width: 48,
                          height: 48,
                        ),
                        trailing: Text(
                          product.price,
                          style: GoogleFonts.lato(
                              color: Color.fromARGB(255, 43, 41, 41),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 50,
                    );
                  },
                ),
        ),
      ),
    );
  }
}
