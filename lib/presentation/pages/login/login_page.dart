import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../global/custom_button.dart';
import '../../../providers/login_change_notifier.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();

  final password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final loginNotifier = context.read<LoginChangeNotifier>();
    loginNotifier.addListener(() {
      if(loginNotifier.isFail){
        showDialog(
            context: context,
            builder: (context){
          return const AlertDialog(
            title: Text('ERROR'),
            content: Text('Giris Ugursuz oldu'),
          );
        });
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: username,
              decoration: const InputDecoration(
                  hintText: 'Username', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                const Text('Keep me signed in'),
                Checkbox(value: true, onChanged: (val) {})
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Consumer<LoginChangeNotifier>(
                builder: (context, loginNotifier, child){
                  if(loginNotifier.inProgress){
                    return const CircularProgressIndicator();
                  }
                  return CustomButton(
                    title: 'LOGIN',
                    color: Colors.purple,
                    onTap: () {
                      context
                          .read<LoginChangeNotifier>()
                          .login(username.text, password.text);
                    },
                  );
                },),
          ],
        ),
      ),
    );
  }
}
