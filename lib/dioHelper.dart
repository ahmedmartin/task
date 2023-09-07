import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/Api_responce/token.dart';
import 'package:task/Api_responce/user.dart';
import 'package:task/Entities/baseEntity.dart';
import 'package:task/Models/baseModel.dart';

class DioHelperr<T extends BaseModel> {
  // static Dio? dio;
  final T model;
  DioHelperr(this.model);

  // static init() {
  //   dio = Dio(
  //     BaseOptions(
  //       baseUrl: '',
  //       receiveDataWhenStatusError: true,
  //     ),
  //   );
  // }

  // Future<Either<String, T>> getData(
  //     {required String url, required BaseEntity data}) async {
  //   print('getData with generic class ${model}');

  //   try {
  //     //final responce = await dio?.get(url);
  //     Future.delayed(Duration(seconds: 1));

  //     return Right(model.fromJson(UserResponce.data(data.toJson())));
  //   } catch (e) {
  //     print(e);
  //     if (e is SocketException) {
  //       return Left(e.message);
  //     } else if (e is DioException) {
  //       return Left(e.message!);
  //     } else {
  //       return Left(e.toString());
  //     }
  //   }
  // }

  Future<T> getData({required String url, required BaseEntity data}) async {
    print('getData with generic class ${model}');

    try {
      //final responce = await dio?.get(url);
      model.error = null;
      Future.delayed(const Duration(seconds: 2));

      return model.fromJson(UserResponce.data(data.toJson()));
    } catch (e) {
      print(e);
      if (e is SocketException) {
        model.error = e.message;
        return model;
      } else if (e is DioException) {
        model.error = e.message;
        return model;
      } else {
        model.error = e.toString();
        return model;
      }
    }
  }

  // Future<Either<String, T>> postData({
  //   required String url,
  //   required BaseEntity data,
  //   //required BaseModel model
  // }) async {
  //   print('postData with generic class ${model}');

  //   try {
  //     // final responce = await dio?.post(url, data: data.toJson());
  //     await Future.delayed(Duration(seconds: 1));

  //     return Right(model.fromJson(TokenResponce.data(data.toJson())));
  //   } catch (e) {
  //     print(e);
  //     if (e is SocketException) {
  //       return Left(e.message);
  //     } else if (e is DioException) {
  //       return Left(e.message!);
  //     } else {
  //       return Left(e.toString());
  //     }
  //   }
  // }

  Future<T> postData({
    required String url,
    required BaseEntity data,
  }) async {
    print('postData with generic class ${model}');

    try {
      // final responce = await dio?.post(url, data: data.toJson());
      model.error = null;
      await Future.delayed(const Duration(seconds: 2));

      return model.fromJson(TokenResponce.data(data.toJson()));
    } catch (e) {
      print(e);
      if (e is SocketException) {
        model.error = e.toString();
        return model;
      } else if (e is DioException) {
        model.error = e.toString();
        return model;
      } else {
        model.error = e.toString();
        return model;
      }
    }
  }
}
