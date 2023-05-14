import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Prodemo extends StatefulWidget {
  const Prodemo({super.key});

  @override
  State<Prodemo> createState() => _ProdemoState();
}

class _ProdemoState extends State<Prodemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}
