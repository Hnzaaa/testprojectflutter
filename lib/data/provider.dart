// ignore_for_file: non_constant_identifier_names

//import 'dart:convert';
import 'package:myapp/data/dropdownmodel.dart';
import 'package:myapp/data/getotpmodel.dart';
import 'package:myapp/data/service.dart';
import 'package:myapp/data/servicelistmodel.dart';
import 'package:myapp/data/verifyotpmodel.dart';

class ServiceListProvider {
  Future<ServiceListModel> getservicelist(String url) async {
    final Response = await Restapi().get(url: Uri.parse(url));
    return ServiceListModel.fromJson(Response);
  }

  Future<Getotpmodel> getotp({required String url}) async {
    final resp = await Restapi().post(url: Uri.parse(url));
    return Getotpmodel.fromJson(resp);
  }

  Future<Verifyotpmodel> verifyotp({required String url, Map? body}) async {
    final resp = await Restapi().post(url: Uri.parse(url), body: body);
    return Verifyotpmodel.fromJson(resp);
  }

  Future<Dropdownmodel> dropdown({required String url}) async {
    final resp = await Restapi().get(url: Uri.parse(url));
    return Dropdownmodel.fromJson(resp);
  }
}
