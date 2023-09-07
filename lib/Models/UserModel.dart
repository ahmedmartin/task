import 'package:task/Models/baseModel.dart';

class UserModel implements BaseModel {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  int? age;
  @override
  String? error;

  @override
  UserModel fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first name'];
    lastName = json['last name'];
    email = json['email'];
    phone = json['phone'];
    age = json['age'];
    return this;
  }

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.age});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first name'] = this.firstName;
    data['last name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['age'] = this.age;
    return data;
  }
  
  
}
