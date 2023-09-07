import 'package:dartz/dartz.dart';
import 'package:task/Entities/baseEntity.dart';
import 'package:task/Models/tokenModel.dart';
import 'package:task/Repos/getToken_repo.dart';
import 'package:task/dioHelper.dart';

class GetTokenAction {
  // Future<Either<String, TokenModel>> GetToken(BaseEntity entity) async {
  //   print(GetTokenAction);
  //   return await GetTokenRepo(TokenModel()).postData(url: 'https://token', data: entity);
  //   //return await DioHelperr().postData(url: 'https://token', data: entity);
  // }
  Future<TokenModel> GetToken(BaseEntity entity) async {
    print(GetTokenAction);
    return await GetTokenRepo(TokenModel()).postData(url: 'https://token', data: entity);
    //return await DioHelperr().postData(url: 'https://token', data: entity);
  }
}
