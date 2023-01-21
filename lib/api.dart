import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/constant/colors.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
        backgroundColor: const Color(0xFFf4f5f5),
        appBar: AppBar(
          title: const Text('Services'),
          backgroundColor: appbarcolor,
          actions: const [Icon(Icons.home_outlined)],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
              +
          ),
        ));
  }
}
