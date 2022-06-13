import 'package:flutter/material.dart';
import 'package:flutter_step4/auth_service.dart';
import 'package:flutter_step4/login_page.dart';
import 'package:flutter_step4/reg_page.dart';
import 'package:flutter_step4/splash_screen.dart';
import 'package:flutter_step4/welcome_page.dart';
import 'package:flutter_step4/home_page.dart';
import 'package:flutter_step4/wrapper.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_step4/reset_page.dart';

void main() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //changes mp to gmp
    return MultiProvider(
        providers: [
          Provider<AuthService>(
            create: (_) => AuthService(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Auth Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => Wrapper(),
            '/login': (context) => LoginPage(),
            '/register': (context) => RegPage(),
            '/reset': (context) => ResetPage(),
          },
        ));
  }
}
