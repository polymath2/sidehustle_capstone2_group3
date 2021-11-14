import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';

class RememberMeForgetPassword extends StatelessWidget {
  const RememberMeForgetPassword({Key? key}) : super(key: key);

// RememberMeForgetPassword
  final bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: value,
              onChanged: (value) {
                /*setState(() {
              this.value = value!;
            })*/
              },
              activeColor: kHifiScafoldColor
              //const Color(0xFF46A0AE),
              ),
        ),
        const Text(
          'Remember Me',
          style: TextStyle(fontSize: 15),
        ),
        const Spacer(),
        const Text(
          'Forget Password?',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
