import 'package:flutter/material.dart';
import '../../global/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Username', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const TextField(
              decoration: InputDecoration(
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
            CustomButton(
              title: 'LOGIN',
              color: Colors.purple,
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
