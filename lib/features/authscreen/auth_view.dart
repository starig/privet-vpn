import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/config/constants.dart';
import 'package:privet_vpn/features/authscreen/state/auth_cubit.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return WrapperView(
          // ignoresSafeArea: true,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage("assets/images/logoAnimated.gif"),
                      width: 281,
                      height: 281,
                    ),
                    const Text(
                      "PRIVET \nVPN",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: labelFontName,
                        color: AppColors.primaryPurple,
                        fontSize: 64,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 77,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            onTap: () async {
                              await context.read<AuthCubit>().signInWithGoogle();
                              // Navigator.pushNamed(context, "/home");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              height: 44,
                              decoration: BoxDecoration(
                                color: AppColors.defaultWhite,
                                borderRadius: BorderRadius.circular(55),
                              ),
                              child: SvgPicture.asset("assets/images/googleIcon.svg"),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/register");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              height: 44,
                              decoration: BoxDecoration(
                                color: AppColors.defaultWhite,
                                borderRadius: BorderRadius.circular(55),
                              ),
                              child: SvgPicture.asset("assets/images/appleIcon.svg"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
