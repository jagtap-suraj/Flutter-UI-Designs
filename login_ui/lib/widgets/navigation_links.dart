import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';
import 'package:login_ui/screens/login_screen.dart';
import 'package:login_ui/screens/signup_screen.dart';

class LinkToSignup extends StatelessWidget {
  const LinkToSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account? ', style: TextStyle(fontSize: 14)),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const SignupScreen(),
              ),
            );
          },
          child: const Text(
            'Create One',
            style: TextStyle(fontSize: 14, color: Pallete.linkColor),
          ),
        ),
      ],
    );
  }
}

class LinkToLogin extends StatelessWidget {
  const LinkToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account? ', style: TextStyle(fontSize: 14)),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text(
            'Sign in',
            style: TextStyle(fontSize: 14, color: Pallete.linkColor),
          ),
        ),
      ],
    );
  }
}
