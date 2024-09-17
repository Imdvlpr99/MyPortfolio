import 'package:MyPortfolio/utils/constants.dart';
import 'package:MyPortfolio/utils/typography.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: IntrinsicHeight(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Username',
                    controller: usernameController,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    isPassword: true,
                  ),
                  const SizedBox(height: 55),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: purple,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                      child: Text(
                        'Login',
                        style: regular16White(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }

}