//import 'dart:ui';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/constant/colors.dart';
import 'package:myapp/data/repository.dart';
import 'package:myapp/data/servicelistmodel.dart';
import 'package:myapp/module/servicelist/widgets.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({
    super.key,
  });

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  // @override
  // void initState() {
  // ignore: todo
  //   // TODO: implement initState
  //   Repository().getservicelist(
  //       url: 'http://ayatanacoorg.in/api/v1/saleteam/serviceslist');
  //   //super.initState();
  // }

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
        body: FutureBuilder(
          future: Repository().getservicelistfhgfgfjh(
              url: 'http://ayatanacoorg.in/api/v1/saleteam/serviceslist'),
          builder:
              (BuildContext context, AsyncSnapshot<ServiceListModel> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.response?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return NewPagewidget().newpagegrid(
                      // ignore: prefer_interpolation_to_compose_strings
                      gridimage: 'http://ayatanacoorg.in/media/attachment/' +
                          (snapshot.data?.response?[index].icons).toString(),
                      gridtext:
                          (snapshot.data?.response?[index].value).toString());
                },
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text('No Data Found'));
            }
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: .9,
                color: Colors.black,
              ),
            );
          },
        ));
  }
}
