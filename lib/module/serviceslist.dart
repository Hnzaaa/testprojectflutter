//import 'dart:ui';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/constant/colors.dart';
import 'package:myapp/demo/bloc/demo_bloc.dart';
import 'package:myapp/module/servicelist/widgets.dart';

class MyDemoPage extends StatefulWidget {
  const MyDemoPage({
    super.key,
  });

  @override
  State<MyDemoPage> createState() => _MyDemoPageState();
}

class _MyDemoPageState extends State<MyDemoPage> {
  DemoBloc demobloc = DemoBloc();
  // @override
  // void initState() {
  // ignore: todo
  //   // TODO: implement initState
  //   Repository().getservicelist(
  //       url: 'http://ayatanacoorg.in/api/v1/saleteam/serviceslist');
  //   //super.initState();
  // }
  @override
  void initState() {
    demobloc = BlocProvider.of<DemoBloc>(context);
    demobloc.add(const FetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
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
        body: BlocBuilder<DemoBloc, DemoState>(
          builder: (context, state) {
            if (state is DemoLoaded) {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: state.servicelistmodel.response?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return NewPagewidget().newpagegrid(
                      // ignore: prefer_interpolation_to_compose_strings
                      gridimage: 'http://ayatanacoorg.in/media/attachment/' +
                          (state.servicelistmodel.response?[index].icons)
                              .toString(),
                      gridtext: (state.servicelistmodel.response?[index].value)
                          .toString());
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 0.8,
                ),
              );
            }
          },
        ));
  }
}
