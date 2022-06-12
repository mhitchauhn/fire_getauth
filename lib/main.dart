import 'package:flutter/material.dart';
import 'package:flutter_step4/auth_controller.dart';
import 'package:flutter_step4/login_page.dart';
import 'package:flutter_step4/reg_page.dart';
import 'package:flutter_step4/splash_screen.dart';
import 'package:flutter_step4/welcome_page.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //changes mp to gmp
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpalshScreen(),
    );
  }
}
