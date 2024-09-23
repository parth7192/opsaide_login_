import 'package:flutter/material.dart';
import 'package:opsaide_login/Routes/my_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins.w700",
      ),
      routes: AppRoutes.instance.allRoutes,
    );
  }
}
