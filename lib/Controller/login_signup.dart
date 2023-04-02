import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Pages/dash_board.dart';

void signup(String email, password) async {
  try {
    final response =
        await http.post(Uri.parse('https://reqres.in/api/register'), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: 'Account Created successsfully', backgroundColor: Colors.green);
      Get.to(DashBoard());
    } else {
      Fluttertoast.showToast(
        msg: 'Unable to create account',
      );
    }
  } catch (e) {
    Fluttertoast.showToast(
        msg: email + password, backgroundColor: Colors.redAccent);
  }
}

void login(String email, password) async {
  print(email + password);

  try {
    final response =
        await http.post(Uri.parse('https://reqres.in/api/login'), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: 'Login successsfully', backgroundColor: Colors.green);
      Get.to(DashBoard());
    } else {
      Fluttertoast.showToast(msg: 'Username or password wrong');
    }
  } catch (e) {
    Fluttertoast.showToast(
        msg: e.toString(), backgroundColor: Colors.redAccent);
  }
}
