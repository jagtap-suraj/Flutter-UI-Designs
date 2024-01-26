import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';
import 'package:login_ui/widgets/grdient_button.dart';
import 'package:login_ui/widgets/user_field.dart';
import 'package:login_ui/widgets/navigation_links.dart';
import 'package:login_ui/widgets/social_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/background_balls.png'),
              const Text(
                'Sign up',
                style: TextStyle(fontSize: 44, color: Pallete.whiteColor),
              ),
              const SizedBox(height: 24),
              SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                label: 'Sign up with Google',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Sign up with Facebook',
                horizontalPadding: 86,
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const Text('or', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              UserField(
                hintText: 'Name',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              UserField(
                hintText: 'Email',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              UserField(
                hintText: 'Password',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              const GradientButton(
                hintText: 'Sign up',
              ),
              const SizedBox(height: 16),
              const LinkToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
