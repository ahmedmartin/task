import 'package:dartz/dartz.dart';
import 'package:task/Entities/baseEntity.dart';
import 'package:task/Models/UserModel.dart';
import 'package:task/Repos/getUser_repo.dart';

class GetUserAction {
  // Future<Either<String, UserModel>> GetUser(BaseEntity entity) async {
  //   print('GetUserAction');
  //   return await GetUserRepo(UserModel()).getData(url: 'https://user', data: entity);
  // }

  Future<UserModel> GetUser(BaseEntity entity) async {
    print('GetUserAction');
    return await GetUserRepo(UserModel()).getData(url: 'https://user', data: entity);
  }
}
