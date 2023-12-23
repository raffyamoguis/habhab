import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String imageSource;
  final double price;

  const FoodCard({
    super.key,
    required this.name,
    required this.imageSource,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageSource,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "₱ $price",
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      Ink(
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: () {
                            debugPrint("Add clicked!");
                          },
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: const Padding(
                            padding: EdgeInsets.all(
                              2.0,
                            ), // Adjust padding to make it smaller
                            child: Icon(
                              Icons.add,
                              size: 20.0, // Adjust the icon size
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
