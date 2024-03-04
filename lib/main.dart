import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:privet_vpn/app.dart';
import 'package:privet_vpn/config/theme.dart';
import 'package:privet_vpn/features/home/home_view.dart';
import 'package:privet_vpn/features/home/state/home_cubit.dart';
import 'package:privet_vpn/features/login/login_view.dart';
import 'package:privet_vpn/features/new_password/new_password_view.dart';
import 'package:privet_vpn/features/register/register_view.dart';
import 'package:privet_vpn/features/reset_password/reset_password_view.dart';

void main() {
  runApp(
    MultiBlocProvider(
        providers: [
          BlocProvider(create: ((context) => HomeCubit())),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          initialRoute: '/',
          routes: <String, WidgetBuilder>{
            '/': (BuildContext context) => const AppView(),
            '/register': (BuildContext context) => const RegisterView(),
            '/login': (BuildContext context) => const LoginView(),
            '/reset_password': (BuildContext context) =>
                const ResetPasswordView(),
            '/new_password': (BuildContext context) => const NewPasswordView(),
            '/home': (BuildContext context) => const HomeView(),
          },
        )),
  );
}
