import 'package:flutter/material.dart';
import 'package:login_ui/pallete.dart';

class GradientButton extends StatelessWidget {
  final String hintText;
  const GradientButton({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(340, 52),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          hintText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Pallete.whiteColor,
          ),
        ),
      ),
    );
  }
}
