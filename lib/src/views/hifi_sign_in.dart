// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/lofi_sign.dart';
import 'package:sidehustle_capstone2_group3/src/views/remember_me_forget_password.dart';

class HifiScreen extends StatelessWidget {
  static const id = 'HifiView';
  const HifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an app bar for navigation to the other Lofi screen. it will be removed in the final product.
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, LofiScreen.id),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('Go to LoFi Screen'))
        ],
      ),
      backgroundColor: kHifiScafoldColor,
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Email or Username',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: 'Enter Your Mail or Username',
                      hintStyle: TextStyle(color: Colors.black38),
                      contentPadding: EdgeInsets.only(top: 14),
                      border: InputBorder.none,
                    )),
              ),
              RememberMeForgetPassword()
            ],
          )),
    );
  }
}
