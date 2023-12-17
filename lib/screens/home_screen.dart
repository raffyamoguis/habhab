import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Ryzon",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Unsa may gusto nimo kan.on ron?",
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
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
                icon: const Icon(Icons.notifications_outlined)),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        // backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
