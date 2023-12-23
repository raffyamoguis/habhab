import 'package:flutter/material.dart';
import 'package:habhab/core/presentation/components/food_card.dart';
import 'package:habhab/core/resources/app_colors.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            const Text(
              "Recommendation",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                debugPrint("More clicked!");
              },
              child: const Text(
                "More",
                style: TextStyle(
                  color: AppColors.secondary,
                ),
              ),
            ),
          ],
        ),
        const SingleChildScrollView(
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
