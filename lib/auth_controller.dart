import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_step4/login_page.dart';
import 'package:flutter_step4/welcome_page.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  ///AuthController.instance..
  static final AuthController instance = Get.find();

  ///users,emails,password..
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);

    ///our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage(email: user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User messsage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Account creation failed"),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.white)));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "Login messsage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Loginfailed"),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.white)));
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
