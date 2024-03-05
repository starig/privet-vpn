import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final void Function() onTap;
  const MenuItem({super.key, required this.title, required this.iconUrl, required this.onTap});

  static const double forwardArrowSize = 22;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(iconUrl),
      title: Text(title),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.primaryPurple,
        size: forwardArrowSize,
      ),
    );
  }
}
