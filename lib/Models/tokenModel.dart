import 'package:flutter/material.dart';
import 'package:task/Entities/baseEntity.dart';
import 'package:task/Models/baseModel.dart';

class TokenModel implements BaseModel {

  String? token;
  @override
  String? error;

  TokenModel({this.token});

  @override
  TokenModel fromJson(Map<String, dynamic> json) {
    token = json['token'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
  
  
  
}
