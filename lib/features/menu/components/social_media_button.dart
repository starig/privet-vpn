import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';

class SocialMediaButton extends StatelessWidget {
  final String iconUrl;
  const SocialMediaButton({super.key, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.primaryPurple,
        borderRadius: BorderRadius.circular(40),
      ),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
