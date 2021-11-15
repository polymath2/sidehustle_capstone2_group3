import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/hifi_sign_in.dart';

class LofiScreen extends StatelessWidget {
  static const id = 'LofiView';
  const LofiScreen({Key? key}) : super(key: key);

  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an app bar for navigation to the other Hifi screen. it will be removed in the final product.
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: TextButton.icon(
          onPressed: () => Navigator.pushNamed(context, HifiScreen.id),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          label: const Text('Go to HiFi Screen'),
        ),
      ),
      backgroundColor: kLofiScafoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // All OUR WIDGETS WILL GO IN HERE
<<<<<<< HEAD

            //Sign In Button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "SIGN IN",
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )


=======
            const SizedBox(
              width: 30,
            ),
            Row(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          // setState(() {
                          //   isChecked = newValue!;
                          // });
                        }),
                    const Text(
                      'Remember Me',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                const Text('Forget Password?'),
              ],
            ),
>>>>>>> 763266005dcb7b517d141f6c2daf4b7586767dd0
          ],
        ),
      ),
    );
  }
}
