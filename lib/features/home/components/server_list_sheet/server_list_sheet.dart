import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';

class ServerListSheet extends StatefulWidget {
  const ServerListSheet({super.key});

  @override
  State<ServerListSheet> createState() => _ServerListSheetState();
}

class _ServerListSheetState extends State<ServerListSheet> {
  final ScrollController _controller = ScrollController();
  final int itemCount = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60 * itemCount + 70,
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Точка доступа",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                controller: _controller,
                itemCount: itemCount,
                itemBuilder: (BuildContext context, int index) {
                  bool isSelected = index == 2;
                  return Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    decoration: BoxDecoration(
                      gradient: isSelected ? purpleGradient : null,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/flag.png"),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Нидерланды",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: isSelected
                                    ? AppColors.defaultWhite
                                    : AppColors.primaryText,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/connection1.svg",
                              color: isSelected
                                  ? AppColors.defaultWhite
                                  : AppColors.primaryPurple,
                            ),
                            SvgPicture.asset(
                              isSelected
                                  ? "assets/images/selectedServer.svg"
                                  : "assets/images/unselectedServer.svg",
                              color: isSelected
                                  ? AppColors.defaultWhite
                                  : AppColors.primaryPurple,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
