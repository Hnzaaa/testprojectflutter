import 'package:flutter/material.dart';
import 'package:myapp/module/servicelist/newscreen.dart';
import 'module/servicelist/newpage.dart';
import 'module/servicelist/profile.dart';
import 'module/servicelist/servicelist.dart';
import 'module/serviceslist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController newcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
        backgroundColor: Colors.white54,
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
                        'Services',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySecondPage()));
                      }),
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
                  'PROFILE',
                  style: TextStyle(color: Colors.white),
                ),
                spacer(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: newcontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Center(child: Text('Name'))),
                  ),
                ),
                spacer(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Profile(newcontroller.text.toString())));
                    },
                    child: const Text('My Profile')),
                spacer(height: 20),
                Container(
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, top: 0, bottom: 0),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: MaterialButton(
                      child: const Text(
                        'Industries',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewPage()));
                      }),
                ),
                spacer(height: 40),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Center(
                    child: Text(
                      'Container',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                spacer(height: 20),
                Container(
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, top: 0, bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: MaterialButton(
                      child: const Text(
                        'Login Screen',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewScreen()));
                      }),
                ),
                spacer(height: 20),
                MaterialButton(
                    child: const Text(
                      'Demo Page',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyDemoPage()));
                    }),
              ],
            ),
          ),
        ));
  }
}
