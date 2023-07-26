import 'package:flutter/cupertino.dart';
import '../data/services/login_data_source.dart';

class LoginChangeNotifier extends ChangeNotifier {
  bool inProgress = false;
  bool isSuccess = false;
  bool isFail = false;

  void login(String username, String password) async {
    inProgress = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));
    final loginDataSource = LoginDataSource();
    final result = await loginDataSource.signIn(
        username, password); // ui dan gelen data oturururuk
 final resultInNotNull = result != null;

    isSuccess = resultInNotNull;
    isFail = !resultInNotNull;
    inProgress = false;
    notifyListeners();
  }
}
