import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:opsaide_login/MyApp/my_app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
