import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_step4/auth_controller.dart';
import 'package:flutter_step4/reg_page.dart';
import 'package:get/get.dart';
import 'reset_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) ;
  }

  var emailController = TextEditingController();
  var passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            Container(
              width: w * 1,
              height: h * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/login.png"),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ABC Enterprise",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.green,
                          fontWeight: FontWeight.bold)),
                  Text("Sign in to continue",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "User Name",
                          //labelText: 'User Name',
                          prefixIcon: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.deepOrangeAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          //labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.deepOrangeAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextFormField(
                      controller: passwordContoller,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",

                          //labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: Colors.deepOrangeAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be minimum six";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),

                      ///here is link for redirect back to login page
                      RichText(
                          text: TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(() => ResetPage()),
                              text: "Forgot Login details",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                AuthController.instance.login(
                    emailController.text.trim(), passwordContoller.text.trim());
              },
              child: Container(
                width: w * 0.2,
                height: h * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/img/loginbtn.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            ///here our richtext for new sign page
            SizedBox(
              height: w * 0.04,
            ),
            RichText(
              text: TextSpan(
                  text: "New to ABC?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold
                  ),

                  ///from here we redirect to sign up page
                  children: [
                    TextSpan(
                      text: " Create account",
                      style: TextStyle(
                          color: Color.fromARGB(255, 80, 151, 233),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),

                      ///here is our redirect code
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => RegPage()),
                    )
                  ]),
            ),

            /// this section will show bottom msg
            SizedBox(
              height: 90,
            ),
            Text("Powered By XYZ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurpleAccent,
                    backgroundColor: Colors.lime,
                    fontWeight: FontWeight.w900)),
          ]),
        ),
      ),
    );
  }
}
