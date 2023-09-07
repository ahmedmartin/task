import 'package:task/Entities/baseEntity.dart';

class UserEntity implements BaseEntity {
  final String email;
  final String password;

  UserEntity(this.email, this.password);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
