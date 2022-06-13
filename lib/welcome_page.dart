import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_step4/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_step4/user_model.dart';
import 'wrapper.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 220, 238, 153),
        appBar: AppBar(
          title: Center(child: Text("Home")),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("You're in the Home Screen"),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    await authService.signOut();
                  },
                  child: Text("Logout"),
                ),
              )
            ],
          ),
        )));
    /*children: [
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
              Container(
                //this portion is for greeting user
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("WELCOME",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 54, 9, 218),
                            fontWeight: FontWeight.bold)),
                    Text("YOUR ACCOUNT DETAILS:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 6, 211, 16))),
                    //we will show user details in this section
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Full Name",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 74, 78, 74))),
                          Text("@exmaple",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 74, 78, 74))),
                        ],
                      ),
                    )

                    /*SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text("Forgot your Password?",
                        style: TextStyle(
                            fontSize: 20, color: Colors.lightBlue[500])),
                  ],
                ),*/
                  ],
                ),
              ),
              //botton portion start from here
              SizedBox(height: 100),

              Container(
                width: w * 0.2,
                height: h * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/img/loginbtn.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              ///button portion ends here
            ],
          ),
        ));*/
  }
}
