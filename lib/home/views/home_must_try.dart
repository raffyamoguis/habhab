import 'package:flutter/material.dart';
import 'package:habhab/core/presentation/components/food_card.dart';

class MustTry extends StatelessWidget {
  const MustTry({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Text(
              "Must Try Delight",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text("More"),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            FoodCard(
              name: "Fried Chicken",
              imageSource: "assets/images/friedchicken.png",
              price: 510,
            ),
            FoodCard(
              name: "Pizza",
              imageSource: "assets/images/pizza-main.png",
              price: 310,
            ),
            FoodCard(
              name: "Spaghetti",
              imageSource: "assets/images/spaghetti-ff.webp",
              price: 280,
            ),
          ]),
        ),
      ],
    );
  }
}
