import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:privet_vpn/app.dart';
import 'package:privet_vpn/config/theme.dart';
import 'package:privet_vpn/features/authscreen/state/auth_cubit.dart';
import 'package:privet_vpn/features/home/home_view.dart';
import 'package:privet_vpn/features/home/state/home_cubit.dart';
import 'package:privet_vpn/features/login/login_view.dart';
import 'package:privet_vpn/features/menu/menu_view.dart';
import 'package:privet_vpn/features/new_password/new_password_view.dart';
import 'package:privet_vpn/features/profile/profile_view.dart';
import 'package:privet_vpn/features/register/register_view.dart';
import 'package:privet_vpn/features/reset_password/reset_password_view.dart';
import 'package:privet_vpn/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(
    MultiBlocProvider(
        providers: [
          BlocProvider(create: ((context) => HomeCubit())),
          BlocProvider(create: ((context) => AuthCubit())),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          initialRoute: '/',
          themeAnimationCurve: Curves.easeInOut,
          routes: <String, WidgetBuilder>{
            '/': (BuildContext context) => const AppView(),
            '/register': (BuildContext context) => const RegisterView(),
            '/login': (BuildContext context) => const LoginView(),
            '/reset_password': (BuildContext context) => const ResetPasswordView(),
            '/new_password': (BuildContext context) => const NewPasswordView(),
            '/home': (BuildContext context) => const HomeView(),
            '/menu': (BuildContext context) => const MenuView(),
            '/profile': (BuildContext context) => const ProfileView(),
          },
        )),
  );
}
