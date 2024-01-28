// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'package:odja/product.dart';

// class OdjaPage extends StatefulWidget {
//   const OdjaPage({super.key});

//   @override
//   State<OdjaPage> createState() => _OdjaPageState();
// }

// class _OdjaPageState extends State<OdjaPage> {
//   List<Product> products = [];

//   Future<void> getProductData() async {
//     String url = "https://fakestoreapi.com/products/";
//     Uri convertedUri = Uri.parse(url);
//     var result = await http.get(convertedUri);
//     if (result.statusCode == 200) {
//       List reusltingList = jsonDecode(result.body) as List;

//       reusltingList.forEach(
//         (element) {
//           products.add(Product.fromJson(element));
//         },
//       );
//     }
//     setState(() {});
//   }

//   //Getting productCategory
//   Future<void> getProductCategory() async {
//     String urlCategory = "https://fakestoreapi.com/products/";
//     Uri convertedUri = Uri.parse(urlCategory);
//     var result = await http.get(convertedUri);
//     if (result.statusCode == 200) {
//       List categoryList = jsonDecode(result.body) as List;

//       categoryList.forEach(
//         (element) {
//           products.add(Product.fromJson(element));
//         },
//       );
//     }
//     setState(() {});
//   }

//   @override
//   void initState() {
//     getProductData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         margin: const EdgeInsets.only(
//           left: 8,
//           right: 8,
//         ),
//         child: products.isEmpty
//             ? Center(
//                 child: Text(
//                   'No products found.',
//                   style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
//                 ),
//               )
//             : SizedBox(
//                 height: MediaQuery.of(context).size.height - 350,
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 100 / 140,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 12,
//                   ),
//                   itemCount: products.length,
//                   itemBuilder: (BuildContext context, index) {
//                     return ProductWidget(product: products[index]);
//                   },
//                 ),
//               ),
//       ),
//     );
//   }
// }

// // ProductWidget.dart
// class ProductWidget extends StatelessWidget {
//   final Product product;

//   const ProductWidget({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     String shortenedTitle = product.title.length > 20
//         ? product.title.substring(0, 10) + '...'
//         : product.title;
//     return Container(
//       width: MediaQuery.of(context).size.width / 2,
//       padding: const EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         color: Colors.grey.withOpacity(0.1),
//       ),
//       child: Column(
//         children: [
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Icon(
//                 Icons.favorite_border_outlined,
//                 color: Color.fromARGB(255, 235, 98, 88),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 130,
//             width: 130,
//             child: Image.network(
//               product.image,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Text(
//             // product.title,
//             shortenedTitle,
//             style: GoogleFonts.lato(
//                 color: const Color.fromARGB(255, 43, 41, 41),
//                 // fontSize: 16,
//                 fontWeight: FontWeight.bold),
//           ),
//           Text(
//             product.category,
//             style: GoogleFonts.lato(
//               color: const Color.fromARGB(255, 235, 98, 88),
//             ),
//           ),
//           Text(
//             '\$ ${product.price}',
//             style: GoogleFonts.lato(
//                 color: const Color.fromARGB(255, 43, 41, 41),
//                 // fontSize: 18,
//                 fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }
















// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:odja/odja_page.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int isSelected = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Our Products",
//             style: GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 50,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 _buildProductCategory(index: 0, name: "All Products"),
//                 _buildProductCategory(index: 1, name: "Men's Wears"),
//                 _buildProductCategory(index: 2, name: "Womens' Wears"),
//                 _buildProductCategory(index: 3, name: "Wears"),
//                 _buildProductCategory(index: 4, name: "Gadgets"),
//               ],
//             ),
//           ),
//           const Expanded(child: OdjaPage()),
//         ],
//       ),
//     );
//   }

//   _buildProductCategory({required int index, required String name}) {
//     return GestureDetector(
//         onTap: () {
//           setState(() {
//             isSelected = index;
//           });
//         },
//         child: Container(
//           width: 120,
//           height: 40,
//           margin: const EdgeInsets.only(top: 10, right: 10),
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: isSelected == index
//                 ? const Color.fromARGB(255, 255, 115, 64)
//                 : const Color.fromARGB(255, 200, 118, 88),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Text(
//             name,
//             style: GoogleFonts.lato(
//               color: Colors.white,
//             ),
//           ),
//         ));
//   }
// }

// // https://fakestoreapi.com/products/categories
