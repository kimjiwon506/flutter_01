import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton(
      {required this.loginImage,
      required this.loginText,
      required this.loginColor,
      required this.loginRadius,
      required this.loginOnPress});

  final Widget loginImage;
  final Widget loginText;
  final Color loginColor;
  final double loginRadius;
  final VoidCallback loginOnPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        height: 50.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: loginColor,
              shape: BeveledRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(loginRadius)))),
          onPressed: loginOnPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: 0, top: 25.0, right: 0, bottom: 25.0)),
              loginImage,
              loginText,
              Opacity(
                opacity: 0.0,
                child: loginImage,
              ),
            ],
          ),
        ));
  }
}
