import 'package:day10/screen/navbar/cart.dart';
import 'package:day10/screen/navbar/category.dart';
import 'package:day10/screen/navbar/product.dart';
import 'package:day10/screen/navbar/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavDemo extends StatefulWidget {
  const NavDemo({super.key});

  @override
  State<NavDemo> createState() => _NavDemoState();
}

class _NavDemoState extends State<NavDemo> {
  List<Widget> pages = [
    Catdemo(),
    Prodemo(),
    CartDemo(),
    ProfileDemo(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (Index) {
            setState(() {
              currentIndex = Index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'Product',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Cart',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.red,
            ),
          ],
        ));
  }
}
