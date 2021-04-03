// não muda o estado
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControler.instance,
      builder: (BuildContext context, Widget child) {
        return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.red,
                brightness: AppControler.instance.dartTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            });
      },
    );
  }
}
