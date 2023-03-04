import 'package:flutter/material.dart';
import 'package:myapp/data/repository.dart';
 
import 'package:myapp/data/newpagemodel.dart';
import 'package:myapp/module/servicelist/widgets.dart';

class NewPage extends StatefulWidget {
  const NewPage({
    super.key,
  });

  @override
  State<NewPage> createState() => _NewPageState();
}   

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('New Page'),
        actions: const [Icon(Icons.home_outlined)],
      ),
      body: FutureBuilder(
        future: Repository().getnewpageab(
            url: 'http://ayatanacoorg.in/api/v1/saleteam/industrylist'),
        builder: (BuildContext context, AsyncSnapshot<NewPageModel> snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.response?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return NewPagewidget().newpagegrid(
                  gridimage:
                      'http://ayatanacoorg.in/media/attachment/${snapshot.data?.response?[index].icons}',
                  gridtext: (snapshot.data?.response?[index].value).toString(),
                );
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
      ),
    );
  }
}
