import 'package:flutter/material.dart';
import 'package:habhab/core/resources/app_colors.dart';
import 'package:habhab/core/resources/app_constants.dart';
import 'package:habhab/core/resources/app_strings.dart';
import 'package:habhab/core/resources/app_values.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void _onPageTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.accountWelcome,
              style: TextStyle(
                  fontSize: 20.0,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              AppStrings.accountMessage,
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
          ),
        ),
        leadingWidth: 50.0,
        actions: [
          Ink(
            width: 40.0,
            height: 40.0,
            decoration: const ShapeDecoration(
              color: Colors.white24,
              shape: CircleBorder(),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
              ),
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: AppConstants.pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => _onPageTap(index),
        height: AppValues.navbarHeight,
        surfaceTintColor: AppColors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: AppStrings.home,
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt),
            label: AppStrings.order,
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            label: AppStrings.favorites,
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
