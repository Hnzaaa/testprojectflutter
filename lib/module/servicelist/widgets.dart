import 'package:flutter/cupertino.dart';

class ServiceListwidget {
  Widget servicelistgrid(
      {required String gridicon,
      required String gridtext,
      required String gridimage}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            gridicon,
            height: 40,
            width: 40,
          ),
          Text(gridtext)
        ],
      ),
    );
  }
}

class NewPagewidget {
  Widget newpagegrid({required String gridimage, required String gridtext}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            gridimage,
            height: 25,
            width: 25,
          ),
          Text(gridtext)
        ],
      ),
    );
  }
}
