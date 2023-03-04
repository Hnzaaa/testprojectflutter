//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/data/dropdownmodel.dart';
import 'package:myapp/data/getotpmodel.dart';
import 'package:myapp/data/repository.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _globalKey = GlobalKey<ScaffoldMessengerState>();

  // var value = 'http://ayatanacoorg.in/api/v1/saleteam/industrylist';
  List<Dropdownmodel> dropdown = [];

  String? username;

  @override
  void initState() {
    super.initState();
  }

  var dropdownvalue;

// List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    Widget spacer({required double height}) {
      return SizedBox(height: height);
    }

    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('New Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
                spacer(height: 20),
                MaterialButton(
                    child: const Text(
                      'Get OTP',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () async {
                      setState(() {
                        username = controller.text.toString();
                      });
                      String url =
                          'http://ayatanacoorg.in/api/v1/saleteam/loginotpsend?username=$username';
                      final getotpresp = await Repository().getotp(url: url);
                      if (getotpresp.code == 200) {
                        var snackBar = SnackBar(
                            content:
                                Text((getotpresp.response?.msg).toString()),
                            action: SnackBarAction(
                              label: 'OK',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NewScreen()));
                              },
                            ));
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
                spacer(height: 20),
                MaterialButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {
                      Map body = {
                        'username': controller.text.toString(),
                        'otp': passwordcontroller.text.toString()
                      };
                      Repository()
                          .verifyotp(
                              body: body,
                              url:
                                  'http://ayatanacoorg.in/api/v1/saleteam/login')
                          .then((value) => {
                                if (value.data!.success!.token!.isNotEmpty)
                                  {
                                    Fluttertoast.showToast(msg: 'Success!')
                                    //        var snackBar = SnackBar(
                                    // content: Text((getotpresp.response?.msg).toString()),
                                    // action: SnackBarAction(
                                    //   label: 'OK',
                                    //   onPressed: () {
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //             builder: (context) => const NewPage()));
                                    //   },
                                    // ));ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                              });
                    }),
                spacer(height: 10),
                FutureBuilder(
                  future: Repository().dropdownab(
                      url:
                          'http://ayatanacoorg.in/api/v1/saleteam/industrylist'),
                  builder: (BuildContext context,
                      AsyncSnapshot<Dropdownmodel> snapshot) {
                    if (snapshot.hasData) {
                      var data = snapshot.data!.response;
                      return DropdownButtonHideUnderline(
                          child: DropdownButton(
                        dropdownColor: Colors.white60,
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: data!.map((items) {
                          return DropdownMenuItem(
                            value: items.value,
                            child: Text(items.value.toString()),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue = newValue.toString();
                          });
                        },
                      ));
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
