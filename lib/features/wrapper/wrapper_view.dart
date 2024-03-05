import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapperView extends StatelessWidget {
  final Widget child;
  final bool? ignoresSafeArea;
  const WrapperView({super.key, required this.child, this.ignoresSafeArea});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/background.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        ignoresSafeArea == true
            ? child
            : SafeArea(
                child: child,
              ),
      ],
    );
  }
}
