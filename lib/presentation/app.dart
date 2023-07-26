import 'package:provider/provider.dart';

import '../presentation/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import '../providers/login_change_notifier.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ChangeNotifierProvider<LoginChangeNotifier>(
        create: (context) => LoginChangeNotifier(),
        child: LoginPage(),
      ),
    );
  }
}