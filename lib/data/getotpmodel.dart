// To parse this JSON data, do
//
//     final getotpmodel = getotpmodelFromJson(jsonString);

import 'dart:convert';

Getotpmodel getotpmodelFromJson(String str) =>
    Getotpmodel.fromJson(json.decode(str));

String getotpmodelToJson(Getotpmodel data) => json.encode(data.toJson());

class Getotpmodel {
  Getotpmodel({
    this.status,
    this.response,
    this.code,
  });

  String? status;
  Response? response;
  int? code;

  factory Getotpmodel.fromJson(Map<String, dynamic> json) => Getotpmodel(
        status: json["status"],
        response: Response.fromJson(json["response"]),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "response": response?.toJson(),
        "code": code,
      };
}

class Response {
  Response({
    this.msg,
  });

  String? msg;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
      };
}
