import 'package:flutter/material.dart';
import 'package:privet_vpn/features/authscreen/auth_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  var isAuthorized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/background.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: AuthView(),
      ),
    );
  }
}
