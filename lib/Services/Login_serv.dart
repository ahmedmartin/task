import 'package:dartz/dartz.dart';
import 'package:task/Actions/getToken_action.dart';
import 'package:task/Actions/getUser_action.dart';
import 'package:task/Entities/baseEntity.dart';
import 'package:task/Models/UserModel.dart';
import 'package:task/Models/tokenModel.dart';

class LoginService {
  // Future<dynamic> login(BaseEntity entity) async {
  //   print('LoginService');
  //   var v = await GetTokenAction().GetToken(entity);

  //   print(v.isRight());
  //   v.fold((failure) {
  //     print('Token failure $failure');
  //     return failure;
  //   }, (success) async {
  //     print('result from Token Action inside Login Service $success');
  //     //return await GetUserAction().GetUser(success);
  //     var temp = await GetUserAction().GetUser(success);

  //     temp.fold((failure) {
  //       print('User failure $failure');
  //       return failure;
  //     }, (success) {
  //       print 
  //     });
  //   });
  // }

  Future<dynamic> login(BaseEntity entity) async {
    print('LoginService');
    TokenModel t = await GetTokenAction().GetToken(entity);
    
    if(t.error != null){
      print('Token failure ${t.error}');
      return t.error;
    }else{
      print('result from Token Action inside Login Service $t');
      UserModel u = await GetUserAction().GetUser(t);

      if(u.error != null){
        print('User failure ${u.error}');
        return u.error;
      }else{
        print('result from user Action inside Login Service $u');
        return u;
      }
    }
  }
}
