import 'package:task/Entities/baseEntity.dart';

abstract class BaseModel implements BaseEntity {
  String ?error;
  fromJson(Map<String, dynamic> json);
}
