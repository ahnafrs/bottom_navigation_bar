import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartDemo extends StatefulWidget {
  const CartDemo({super.key});

  @override
  State<CartDemo> createState() => _CartDemoState();
}

class _CartDemoState extends State<CartDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
    );
  }
}
