import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final Function onTap;
  final Function onAddToCart;

  ProductCard({required this.product, required this.onTap, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(product),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 6,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Hero(
                      tag: "${product["name"]}",
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: SizedBox(
                          height: 180,
                          width: double.infinity,
                          child: Image.asset(
                            product["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          product["name"],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Row(
                          children: [
                            Text(
                              "${product["price"].toString()} KGS",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  onAddToCart(product);
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
