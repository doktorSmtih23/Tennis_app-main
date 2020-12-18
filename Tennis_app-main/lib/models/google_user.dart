// To parse this JSON data, do
//
//     final googleUser = googleUserFromJson(jsonString);

import 'dart:convert';

GoogleUser googleUserFromJson(String str) =>
    GoogleUser.fromJson(json.decode(str));

String googleUserToJson(GoogleUser data) => json.encode(data.toJson());

class GoogleUser {
  GoogleUser({
    this.displayName,
    this.email,
    this.id,
    this.photoUrl,
  });

  String displayName;
  String email;
  String id;
  String photoUrl;

  factory GoogleUser.fromJson(Map<String, dynamic> json) => GoogleUser(
        displayName: json[" displayName"],
        email: json["email"],
        id: json["id"],
        photoUrl: json["photoUrl"],
      );

  Map<String, dynamic> toJson() => {
        " displayName": displayName,
        "email": email,
        "id": id,
        "photoUrl": photoUrl,
      };
}
