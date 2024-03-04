import 'package:flutter/material.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/components/gradient_button.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Введите эл. адрес и мы вышлем ссылку для сброса пароля",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GradientButton(
                        label: "Отправить",
                        onTap: () {
                          Navigator.pushNamed(context, "/new_password");
                        },
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
