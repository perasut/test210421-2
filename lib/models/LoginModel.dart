import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.status,
    this.message,
    this.data,
  });

  String status;
  String message;
  Data data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.user,
    this.password,
  });

  String id;
  String name;
  String user;
  String password;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["Name"],
        user: json["User"],
        password: json["Password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "User": user,
        "Password": password,
      };
}
