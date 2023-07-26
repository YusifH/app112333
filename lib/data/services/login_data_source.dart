import 'package:app1/respons/login_response.dart';
import 'package:dio/dio.dart';

import '../models/login_model.dart';
import 'dio_configuration.dart';

class LoginDataSource {
  Future<LoginResponse?> signIn(String username, String password) async {
    try {
      final loginModel = LoginModel(
        username: username,
        password: password,
      ).toJson();
      final result = await dio.post(
        '/auth/login',
        options: Options(
          contentType: 'application/x-www-form-urlencoded'
        ),
        data: loginModel,
      );

      if (result.statusCode == 200) {
        return LoginResponse.fromJson(result.data);
      }
    } catch (e, s) {
      print(e);
    }
    return null;
  }
}
