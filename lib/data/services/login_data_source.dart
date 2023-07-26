import '../models/login_model.dart';
import 'dio_configuration.dart';

class LoginDataSource {
  Future<bool> signIn(String username, String password) async {
    try {
      final loginModel = LoginModel(
        username: username,
        password: password,
      ).toJson();
      final result = await dio.post('/auth/login', data: loginModel);

      if(result.statusCode == 200){
          return true;
      }

    } catch (e, s) {
      print(e);
      return false;
    }
    return false;
  }
}
