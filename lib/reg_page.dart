import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_step4/auth_controller.dart';
import 'package:get/get.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) ;
  }

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordContoller = TextEditingController();
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: w * 1.3,
                  height: h * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/signup.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 80,
                        backgroundImage: AssetImage("assets/img/user.png"),
                      )
                    ],
                  ),
                ),

                ///This  Section for textfield
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create New Account",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                      Text("Please fill the Correct details below",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500])),
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
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
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
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
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
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
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
                              hintText: "Re-Enter Password",
                              //labelText: 'Password',
                              prefixIcon: Icon(
                                Icons.password_rounded,
                                color: Colors.deepOrangeAccent,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
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
                    ],
                  ),
                ),

                ///Our text field code ends here in UI
                ///here is code for sign up button
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    AuthController.instance.register(
                        emailController.text.trim(),
                        passwordContoller.text.trim());
                  },
                  child: Container(
                    width: w * 0.2,
                    height: h * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/img/loginbtn.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                ///sign up button ends here
                SizedBox(
                  height: 20,
                ),

                ///here is link for redirect back to login page
                RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: "Already Have an accoount?",
                        style: TextStyle(fontSize: 20, color: Colors.blue))),

                ///showing other options for sign up
                SizedBox(
                  height: w * 0.04,
                ),
                RichText(
                  text: TextSpan(
                    text: "Other sign up Options ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),

                Wrap(
                  children: List<Widget>.generate(3, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/img/" + images[index]),
                        ),
                      ),
                    );
                  }),
                )

                ///closing sign up other options
              ],
            ),
          ),
        ));
  }
}
