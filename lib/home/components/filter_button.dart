import 'package:flutter/material.dart';
import 'package:habhab/core/resources/app_colors.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(5.0),
        onTap: () {
          debugPrint("Filter clicked!");
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Center(
            child: Icon(
              Icons.tune,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
