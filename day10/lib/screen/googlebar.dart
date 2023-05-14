import 'package:day10/screen/navbar/cart.dart';
import 'package:day10/screen/navbar/category.dart';
import 'package:day10/screen/navbar/product.dart';
import 'package:day10/screen/navbar/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GoogleBarDemo extends StatefulWidget {
  const GoogleBarDemo({super.key});

  @override
  State<GoogleBarDemo> createState() => _GoogleBarDemoState();
}

class _GoogleBarDemoState extends State<GoogleBarDemo> {
  List<Widget> pages = [
    Catdemo(),
    Prodemo(),
    CartDemo(),
    ProfileDemo(),
  ];
  int currentIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineAwesomeIcons.home,
                  text: 'Home',
                  backgroundColor: Colors.red,
                ),
                GButton(
                  icon: LineAwesomeIcons.heart,
                  text: 'Likes',
                  backgroundColor: Colors.purple,
                ),
                GButton(
                  icon: LineAwesomeIcons.search,
                  text: 'Search',
                  backgroundColor: Colors.blue,
                ),
                GButton(
                  icon: LineAwesomeIcons.user,
                  text: 'Profile',
                  backgroundColor: Colors.green,
                ),
              ],
              onTabChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
