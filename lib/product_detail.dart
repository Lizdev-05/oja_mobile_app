import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odja/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag),
                ),
              ],
            ),
            Expanded(
              child: Image.network("${product.image}"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        product.title,
                        style: GoogleFonts.lato(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 70, 70, 70),
                            fontWeight: FontWeight.w900),
                      ),
                      trailing: Text(
                        product.price,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 70, 70, 70),
                        ),
                      ),
                    ),
                    Text(
                      product.description,
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 70, 70, 70),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
