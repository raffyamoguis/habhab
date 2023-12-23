import 'package:flutter/material.dart';
import 'package:habhab/home/components/category_card.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(
              categoryImage: "assets/images/burger.png",
              title: "Burger",
            ),
            CategoryCard(
              categoryImage: "assets/images/bento.png",
              title: "Bento",
            ),
            CategoryCard(
              categoryImage: "assets/images/sushi.png",
              title: "Sushi",
            ),
            CategoryCard(
              categoryImage: "assets/images/pizza.png",
              title: "Pizza",
            ),
          ],
        ),
      ],
    );
  }
}
