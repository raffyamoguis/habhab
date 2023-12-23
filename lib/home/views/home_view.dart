import 'package:flutter/material.dart';
import 'package:habhab/home/views/home_category.dart';
import 'package:habhab/home/views/home_must_try.dart';
import 'package:habhab/home/views/home_search.dart';
import 'package:habhab/home/views/home_banner.dart';
import 'package:habhab/home/views/recommended_foods.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search
          HomeSearch(),
          SizedBox(
            height: 4.0,
          ),
          // Banner

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeBanner(),
                  HomeCategory(),
                  Recommendation(),
                  MustTry(),
                ],
              ),
            ),
          ),

          //
        ],
      ),
    );
  }
}
