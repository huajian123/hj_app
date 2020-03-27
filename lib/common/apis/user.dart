import 'package:hj_app/common/entitys/entitys.dart';
import 'package:hj_app/common/utils/util.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login(
      {UserLoginRequestEntity params}) async {
    var response = await HttpUtil().post('/user/login', params: params);
    return UserLoginResponseEntity.fromJson(response);
  }
}
