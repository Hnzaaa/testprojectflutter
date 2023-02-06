// To parse this JSON data, do
//
//     final verifyotpmodel = verifyotpmodelFromJson(jsonString);

import 'dart:convert';

Verifyotpmodel verifyotpmodelFromJson(String str) => Verifyotpmodel.fromJson(json.decode(str));

String verifyotpmodelToJson(Verifyotpmodel data) => json.encode(data.toJson());

class Verifyotpmodel {
    Verifyotpmodel({
        this.data,
    });

    Data? data;

    factory Verifyotpmodel.fromJson(Map<String, dynamic> json) => Verifyotpmodel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.success,
        this.userDetails,
    });

    Success? success;
    List<UserDetail>? userDetails;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        success: Success.fromJson(json["success"]),
        userDetails: List<UserDetail>.from(json["user_details"].map((x) => UserDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success!.toJson(),
        "user_details": List<dynamic>.from(userDetails!.map((x) => x.toJson())),
    };
}

class Success {
    Success({
        this.token,
    });

    String? token;

    factory Success.fromJson(Map<String, dynamic> json) => Success(
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
    };
}

class UserDetail {
    UserDetail({
        this.userType,
        this.id,
    });

    String? userType;
    int? id;

    factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        userType: json["user_type"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "user_type": userType,
        "id": id,
    };
}
