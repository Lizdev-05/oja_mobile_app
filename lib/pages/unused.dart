// @override
// Widget build(BuildContext context) {
//   return
// appBar: AppBar(
//   backgroundColor: Colors.purpleAccent,
//   leadingWidth: 100,
//   leading: Container(
//     margin: const EdgeInsets.only(left: 8),
//     child: ClipRRect(
//         borderRadius: BorderRadius.circular(8),
//         child: Image.network(
//           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnIdelCqs6_RCXLXk718e2HL90dSyxj382yg&usqp=CAU",
//           fit: BoxFit.cover,
//           width: 20,
//           height: 20,
//         )),
//   ),
//   actions: const [
//     Icon(Icons.notifications),
//   ],
// ),

//   Container(
// margin: const EdgeInsets.only(left: 8, right: 8, top: 15),
// child: products.isEmpty
//     ? Center(
//         child: Text(
//           'No products found.',
//           style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
//         ),
//       )

// : ListView.separated(
// itemCount: products.length,
// itemBuilder: (BuildContext context, index) {
//   Product product = products[index];
//       return Container(
//         // height: 50,
//         // color: Colors.purple,
//         child: ListTile(
// title: Text(
//   product.title,
//   style: GoogleFonts.lato(
//       color: Color.fromARGB(255, 43, 41, 41),
//       fontSize: 20,
//       fontWeight: FontWeight.bold),
// ),
//           subtitle: Text(
//             "Subtitle of the item",
//             style: GoogleFonts.lato(
//               color: const Color.fromARGB(255, 46, 46, 46),
//               fontSize: 15,
//             ),
//           ),
//           leading: Image.network(
// product.image,
// fit: BoxFit.cover,
//             width: 48,
//             height: 48,
//           ),
//           trailing: Text(
//             product.price,
//             style: GoogleFonts.lato(
//                 color: Color.fromARGB(255, 43, 41, 41),
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//       );
//     },
//     separatorBuilder: (BuildContext context, int index) {
//       return const SizedBox(
//         height: 50,
//     );
//   },
// ),

//           : GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: (100 / 140),
//                   crossAxisSpacing: 12,
//                   mainAxisSpacing: 12),
//               scrollDirection: Axis.vertical,
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, index) {
//                 Product product = products[index];
//                 return Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     color: Colors.grey.withOpacity(0.1),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       const Icon(
//                         Icons.favorite_border_outlined,
//                         color: Color.fromARGB(255, 235, 98, 88),
//                       ),
//                       SizedBox(
//                         height: 130,
//                         width: 130,
//                         child: Image.asset(
//                           product.image,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Text(
//                         product.title,
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 43, 41, 41),
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         product.category,
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 235, 98, 88),
//                             fontSize: 14),
//                       ),
//                       Text(
//                         ('\$ $product.price'),
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 43, 41, 41),
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//     );
//   }
// }

//         Container(
//       margin: const EdgeInsets.only(left: 8, right: 8, top: 15),
//       child: products.isEmpty
//           ? Center(
//               child: Text(
//                 'No products found.',
//                 style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
//               ),
//             )
//           : GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: (100 / 140),
//                   crossAxisSpacing: 12,
//                   mainAxisSpacing: 12),
//               scrollDirection: Axis.vertical,
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, index) {
//                 Product product = products[index];
//                 return Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     color: Colors.grey.withOpacity(0.1),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       const Icon(
//                         Icons.favorite_border_outlined,
//                         color: Color.fromARGB(255, 235, 98, 88),
//                       ),
//                       SizedBox(
//                         height: 130,
//                         width: 130,
//                         child: Image.asset(
//                           product.image,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Text(
//                         product.title,
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 43, 41, 41),
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         product.category,
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 235, 98, 88),
//                             fontSize: 14),
//                       ),
//                       Text(
//                         ('\$ $product.price'),
//                         style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 43, 41, 41),
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//     );
//   }
// }

//

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProductCategory(index: 0, name: "All Products"),
              _buildProductCategory(index: 1, name: "Wears"),
              _buildProductCategory(index: 2, name: "Men's Wears"),
              _buildProductCategory(index: 3, name: "Womens' Wears"),
              _buildProductCategory(index: 4, name: "Accessories"),
              _buildProductCategory(index: 5, name: "Gadgets"),
            ],
          ),
          const OdjaPage(),
        ],
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(5),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.only(top: 10, right: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 255, 115, 64),
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
            )
          ]),
        ),
      ),
    );
  }
}
