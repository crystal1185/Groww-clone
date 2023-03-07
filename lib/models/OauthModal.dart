import 'dart:convert';

oAuthModalClassFromJson(String str) =>
    OAuthModalClass.fromJson(json.decode(str));

String oAuthModalClassToJson(OAuthModalClass data) =>
    json.encode(data.toJson());

class OAuthModalClass {
  OAuthModalClass({
    required this.status,
    required this.data,
  });

  String status;
  Data data;

  factory OAuthModalClass.fromJson(Map<String, dynamic> json) =>
      OAuthModalClass(
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
    required this.refreshToken,
    required this.id,
    required this.name,
    required this.password,
    required this.bankId,
    required this.email,
    required this.profileImage,
    required this.emailVerified,
    required this.googleId,
    required this.uniqueClientCode,
  });

  String? refreshToken;
  String? id;
  String? name;
  String? password;
  String? bankId;
  String? email;
  String? profileImage;
  bool? emailVerified;
  String? googleId;
  String? uniqueClientCode;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        refreshToken: json["refreshToken"],
        id: json["id"],
        name: json["name"],
        password: json["password"],
        bankId: json["bankId"],
        email: json["email"],
        profileImage: json["profile_image"],
        emailVerified: json["email_verified"],
        googleId: json["google_id"],
        uniqueClientCode: json["unique_client_code"],
      );

  Map<String, dynamic> toJson() => {
        "refreshToken": refreshToken,
        "id": id,
        "name": name,
        "password": password,
        "bankId": bankId,
        "email": email,
        "profile_image": profileImage,
        "email_verified": emailVerified,
        "google_id": googleId,
        "unique_client_code": uniqueClientCode,
      };
}
