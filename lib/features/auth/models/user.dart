// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  final String id;
  final String? firstName;
  final String? lastName;
  final String? otherName;
  final String? email;
  final String? address;
  final String? phoneNumber;
  final String? password;
  final String? roles;
  final String? accessToken;

  User({
    required this.id,
    this.firstName,
    this.lastName,
    this.otherName,
    this.email,
    this.address,
    this.phoneNumber,
    this.password,
    this.roles,
    this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': id,
      'firstName': firstName,
      'lastName': lastName,
      'otherName': otherName,
      'email': email,
      'address': address,
      'phoneNumber': phoneNumber,
      'password': password,
      'roles': roles,
      'accessToken': accessToken,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      otherName: map['otherName'] != null ? map['otherName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      roles: map['roles'] != null ? map['roles'] as String : null,
      accessToken:
          map['accessToken'] != null ? map['accessToken'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
