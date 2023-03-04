import 'package:myapp/data/dropdownmodel.dart';
import 'package:myapp/data/getotpmodel.dart';
import 'package:myapp/data/newpagemodel.dart';
import 'package:myapp/data/newpageprovider.dart';
import 'package:myapp/data/provider.dart';
import 'package:myapp/data/servicelistmodel.dart';
import 'package:myapp/data/verifyotpmodel.dart';

class Repository {
  var servicelistprovider = ServiceListProvider();
  var newPageProvider = NewPageProvider();

  Future<ServiceListModel> getservicelistfhgfgfjh({required String url}) =>
      servicelistprovider.getservicelist(url);

  Future<NewPageModel> getnewpageab({required String url}) =>
      newPageProvider.getnewpage(url);

  Future<Getotpmodel> getotp({required String url}) =>
      servicelistprovider.getotp(url: url);

  Future<Verifyotpmodel> verifyotp({required Map body, required String url}) =>
      servicelistprovider.verifyotp(body: body, url: url);

  Future<Dropdownmodel> dropdownab({required String url}) =>
      servicelistprovider.dropdown(url: url);
}
