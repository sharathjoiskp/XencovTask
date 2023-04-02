import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:xencov/Pages/dash_board.dart';

import '../../Controller/login_signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool islogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: ',  to sing',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'in continue',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 70,
                child: Row(
                  children: [
                    islogin
                        ? GestureDetector(
                            child: Container(
                              color: Colors.blue.shade700,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                            onTap: () {
                              setState(() {
                                islogin = !islogin;
                                print(islogin);
                              });
                            },
                          )
                        : Container(
                            color: Colors.blue.shade600,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                    islogin
                        ? Container(
                            color: Colors.blue.shade600,
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            child: Container(
                              color: Colors.blue.shade700,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                            onTap: () {
                              setState(() {
                                islogin = !islogin;
                              });
                            },
                          ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Email Address',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              TextFormField(
                controller: emailController,
                cursorColor: Colors.white,
                cursorHeight: 40,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white, style: BorderStyle.solid),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                cursorColor: Colors.white,
                cursorHeight: 40,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white, style: BorderStyle.solid),
                  ),
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                child: Center(
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 200,
                    child: Center(
                        child: Text(
                      islogin ? 'Sing up' : 'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    )),
                  ),
                ),
                onTap: () {
                  islogin
                      ? signup(emailController.text, passwordController.text)
                      : login(emailController.text, passwordController.text);
                },
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  islogin ? 'Forgot your password?' : "",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
