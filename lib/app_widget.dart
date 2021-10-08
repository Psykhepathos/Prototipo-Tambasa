import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
// 
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // ignore: override_on_non_overriding_member
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(theme: ThemeData.light(), initialRoute: '/', routes: {
      '/': (context) => const LoginPage(),
      '/home': (context) => const HomePage()
    });
  }
}

