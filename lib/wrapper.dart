import 'package:flutter/material.dart';
import 'package:flutter_step4/auth_service.dart';
import 'package:flutter_step4/login_page.dart';
import 'package:flutter_step4/welcome_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_step4/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? LoginPage() : WelcomePage();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
