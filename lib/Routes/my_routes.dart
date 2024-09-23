import 'package:flutter/cupertino.dart';
import 'package:opsaide_login/Screen/login.dart';
import 'package:opsaide_login/Screen/password.dart';
import 'package:opsaide_login/Screen/verification_code.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String login = '/';
  String verificationcode = 'verification_code';
  String password = 'password';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const Login(),
    'verification_code': (context) => VerificationCode(),
    'password': (context) => const PasswordPage(),
  };
}
