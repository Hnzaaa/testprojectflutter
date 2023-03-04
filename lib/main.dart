import 'dart:ffi';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'demo/bloc/demo_bloc.dart';
import 'homescreen.dart';
import 'module/servicelist/servicelist.dart';

void main() {
  runApp( MultiBlocProvider(
    providers:[
      BlocProvider(
        create: (_) => DemoBloc()
      ),
    
    ],
    child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(
        title: 'Home',
      ),
    );
  }
}
