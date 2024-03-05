import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/menu/components/social_media_button.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  static const double containerPadding = 22;
  static const double forwardArrowSize = 22;
  static const double ipContainerRadius = 37;
  static const double ipContainerPadding = 10;

  @override
  Widget build(BuildContext context) {
    return WrapperView(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Меню"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: containerPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ваш ID",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 43,
                        padding: const EdgeInsets.symmetric(horizontal: ipContainerPadding),
                        decoration: BoxDecoration(
                          color: AppColors.defaultWhite,
                          borderRadius: BorderRadius.circular(ipContainerRadius),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "1233 1321 1321 3211",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset("assets/images/copy.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset("assets/images/premium.svg"),
                        title: const Text("Подписка"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primaryPurple,
                          size: forwardArrowSize,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset("assets/images/user.svg"),
                        title: const Text("Профиль"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primaryPurple,
                          size: forwardArrowSize,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset("assets/images/headphones.svg"),
                        title: const Text("Поддержка"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primaryPurple,
                          size: forwardArrowSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialMediaButton(iconUrl: "assets/images/vkLogo.svg"),
                      SocialMediaButton(iconUrl: "assets/images/telegramLogo.svg"),
                      SocialMediaButton(iconUrl: "assets/images/xLogo.svg"),
                      SocialMediaButton(iconUrl: "assets/images/facebookLogo.svg"),
                      SocialMediaButton(iconUrl: "assets/images/webLogo.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      print("haha");
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppColors.primaryRed, borderRadius: BorderRadius.circular(55)),
                      child: const Center(
                        child: Text(
                          "Выйти",
                          style: TextStyle(
                            color: AppColors.defaultWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
