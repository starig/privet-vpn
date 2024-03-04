import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/components/gradient_button.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _hidePassword = true;

  bool _hasError = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return WrapperView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text("Востановление"),
          ),
          body: AnimatedPadding(
            padding: mediaQueryData.viewInsets,
            duration: const Duration(milliseconds: 25),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Придумайте надежный пароль используя буквы верхнего, нижнего регистра, символы и числа.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Введите пароль",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(splashColor: Colors.transparent),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: _hidePassword,
                          keyboardType: TextInputType.visiblePassword,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.defaultWhite,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _hidePassword = !_hidePassword;
                                  });
                                },
                                child: SvgPicture.asset(
                                  "assets/images/eyeIcon.svg",
                                ),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(57),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'mypass!@#!D123',
                            hintStyle: const TextStyle(
                              color: AppColors.mediumGray,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22,),
                      RichText(
                        text: const TextSpan(
                          text: "By creating your account, you are agree to ",
                          children: [
                            TextSpan(
                              text: "Privacy Policy Terms and Conditions",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: " & ",
                            ),
                            TextSpan(
                              text: "Terms and Conditions",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryText,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GradientButton(
                        label: "Подтвердить",
                        onTap: () {},
                        height: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
