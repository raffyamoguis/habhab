import 'package:flutter/material.dart';
import 'package:habhab/home/components/filter_button.dart';
import 'package:habhab/home/components/search_field.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: SearchField(),
        ),
        SizedBox(
          width: 6.0,
        ),
        FilterButton(),
      ],
    );
  }
}
