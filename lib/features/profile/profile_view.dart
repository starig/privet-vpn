import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
          title: Text("Профиль"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: containerPadding),
          child: Column(
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
                        InkWell(
                          onTap: () {
                            Clipboard.setData(ClipboardData(text: "1233 1321 1321 3211"));
                          },
                          child: SvgPicture.asset("assets/images/copy.svg"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 34,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Эл. почта",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "ivan.ivanov@yandex.ru",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 34,
              ),
              Text(
                "Изменить пароль",
                style: TextStyle(
                  decorationColor: AppColors.defaultWhite,
                  decoration: TextDecoration.underline,
                  color: AppColors.defaultWhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
