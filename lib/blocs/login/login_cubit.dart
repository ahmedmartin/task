import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/Entities/userEntity.dart';
import 'package:task/Models/UserModel.dart';
import 'package:task/Services/Login_serv.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Login(String email, String pass) async {
    print('Login bloc');
    emit(Loading());
    UserEntity entity = UserEntity(email, pass);
    var v = await LoginService().login(entity);

    if (v is String) {
      emit(Error(v));
    } else {
      emit(Loaded(v));
    }
    print(v.runtimeType);
    // v.fold((failure) => emit(Error(failure)), (success) => Loaded(success));
  }
}
