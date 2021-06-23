import 'package:appnlw/modules/home/home_page.dart';
import 'package:appnlw/modules/login/login_page.dart';
import 'package:appnlw/modules/splash/splash_page.dart';
import 'package:appnlw/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
