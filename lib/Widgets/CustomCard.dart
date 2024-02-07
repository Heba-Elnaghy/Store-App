import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/ProductsModel.dart';
import 'package:flutter_application_1/Screens/updateProductScreen.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.products});
  ProductsModel products;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: products);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                spreadRadius: 0,
                offset: Offset(30, 30),
                color: Colors.grey.withOpacity(0.01),
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$' '${products.price.toString()}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 245, 41, 26),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: -30,
            child: Image.network(
              products.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
