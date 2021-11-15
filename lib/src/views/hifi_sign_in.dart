import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/lofi_sign.dart';

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
          children: [
            //  Password input
            const Text(
              'Password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                hintText: '*****************',
                hintStyle: const TextStyle(color: Colors.black38),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
