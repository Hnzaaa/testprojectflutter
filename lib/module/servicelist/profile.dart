import 'package:flutter/material.dart';
import 'package:myapp/module/servicelist/newscreen.dart';

class Profile extends StatelessWidget {
  var nameFromhome;

  Profile(this.nameFromhome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
        actions: const [Icon(Icons.home_outlined)],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome,$nameFromhome',
              style: const TextStyle(color: Colors.blueGrey)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NewScreen()));
              },
              child: const Text('Login')),
        ],
      )),
    );
  }
}
