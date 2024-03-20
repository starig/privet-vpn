import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:privet_vpn/features/authscreen/auth_view.dart';
import 'package:privet_vpn/features/authscreen/state/auth_cubit.dart';
import 'package:privet_vpn/features/home/home_view.dart';
import 'package:privet_vpn/features/wrapper/wrapper_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final Future _future;
  var isAuthorized = false;

  @override
  void initState() {
    _future = context.read<AuthCubit>().checkIsAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return FutureBuilder(
            future: _future,
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const WrapperView(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return state.isAuthorized ? HomeView() : AuthView();
            },
          );
        },
      ),
    );
  }
}
