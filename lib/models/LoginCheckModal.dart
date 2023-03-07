import 'dart:convert';

LoginCheck loginCheckFromJson(String str) =>
    LoginCheck.fromJson(json.decode(str));

String loginCheckToJson(LoginCheck data) => json.encode(data.toJson());

class LoginCheck {
  LoginCheck({
    required this.status,
    required this.data,
  });

  String status;
  Data data;

  factory LoginCheck.fromJson(Map<String, dynamic> json) => LoginCheck(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.check,
  });

  bool check;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        check: json["check"],
      );

  Map<String, dynamic> toJson() => {
        "check": check,
      };
}
