import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/components/gradient_button.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            title: const Text("вход"),
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
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _hasError
                                ? "Несуществующий аккаунт"
                                : "Ваш электронный адрес",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: _hasError
                                  ? AppColors.primaryRed
                                  : AppColors.primaryText,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Theme(
                            data: Theme.of(context)
                                .copyWith(splashColor: Colors.transparent),
                            child: TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.defaultWhite,
                                suffixIcon: _hasError
                                    ? Icon(
                                        Icons.close,
                                        color: AppColors.primaryRed,
                                      )
                                    : null,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(57),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'example@email.ru',
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
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GradientButton(
                        label: "Войти",
                        onTap: () {
                          setState(() {
                            _hasError = true;
                          });
                        },
                        height: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/reset_password');
                        },
                        child: const Text(
                          "Не помню пароль",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.defaultWhite,
                            inherit: false,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.defaultWhite,
                                  borderRadius: BorderRadius.circular(55)),
                              child: Image.asset(
                                "assets/images/googleIcon.png",
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.defaultWhite,
                                  borderRadius: BorderRadius.circular(55)),
                              child: SvgPicture.asset(
                                  "assets/images/appleIcon.svg"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
