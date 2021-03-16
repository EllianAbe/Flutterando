import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';
import 'package:flutterando/home_page.dart';
import 'package:flutterando/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget() : super();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme 
                          ? Brightness.dark 
                          : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
