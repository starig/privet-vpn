import 'package:flutter/material.dart';
import 'package:privet_vpn/config/colors.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final double? height;
  final bool? isDisabled;
  const GradientButton({
    super.key,
    required this.label,
    required this.onTap,
    this.height,
    this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 60,
        decoration: BoxDecoration(
          gradient: purpleGradient,
          borderRadius: BorderRadius.circular(55),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.defaultWhite,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
