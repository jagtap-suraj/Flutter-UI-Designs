import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontalPadding = 96, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 24,
        // color: Pallete.whiteColor,
        colorFilter: const ColorFilter.mode(Pallete.whiteColor, BlendMode.srcIn),
      ),
      label: Text(label),
      style: TextButton.styleFrom(
        foregroundColor: Pallete.whiteColor,
        backgroundColor: Pallete.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 2,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: horizontalPadding,
        ),
      ),
    );
  }
}
