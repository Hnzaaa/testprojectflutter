import 'package:myapp/data/service.dart';
//import 'package:myapp/data/servicelistmodel.dart';

import 'newpagemodel.dart';

class NewPageProvider {
  Future<NewPageModel> getnewpage(String url) async {
    final Response = await Restapi().get(url: Uri.parse(url));
    return NewPageModel.fromJson(Response);
  }
}
