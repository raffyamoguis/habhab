import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryImage;
  final String title;

  const CategoryCard({
    super.key,
    required this.categoryImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        // side: BorderSide(color: Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(categoryImage),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
