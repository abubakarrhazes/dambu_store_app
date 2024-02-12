import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthModel {
  
  final String? firstName;
  final String? lastName;
  final String? otherName;
  final String? email;
  final String? phoneNumber;
  final String? address;
  final String? password;

  
  AuthModel({
    this.firstName,
    this.lastName,
    this.otherName,
    this.email,
    this.phoneNumber,
    this.address,
    this.password,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'otherName': otherName,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
      'password': password,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      otherName: map['otherName'] != null ? map['otherName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phoneNumber: map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) => AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
