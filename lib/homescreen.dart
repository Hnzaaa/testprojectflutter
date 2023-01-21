import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images.jpeg',
                  height: 200,
                  width: 2000,
                ),
                spacer(height: 20),
                const Text(
                  'Use whatsapp on other devices',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                spacer(height: 20),
                Container(
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, top: 0, bottom: 0),
                  decoration: const BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: MaterialButton(
                      child: const Text(
                        'Link a device',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {}),
                ),
                spacer(height: 20),
                Row(
                  children: const [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    Text(
                      'your personal messages are end to end encrypted',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                spacer(height: 20),
                const Text(
                  'Device status',
                  style: TextStyle(color: Colors.white),
                ),
                spacer(height: 20),
                const Text(
                  'Tap a device to log out',
                  style: TextStyle(color: Colors.white),
                ),
                spacer(height: 20),
                Row(
                  children: const [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    Text(
                      'Google chrome',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                spacer(height: 20),
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'Container 1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'Container 2',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'Container 3',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
