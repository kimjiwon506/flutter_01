import 'package:flutter/material.dart';
import 'package:flutter_01/components/login_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildButton(),
    );
  }
}

// _underbar : private역할 => login.dart 파일 안에서만 접근가능
Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginButton(
          loginImage: Image.asset('assets/images/glogo.png'),
          loginText: Text(
            'Login with Google',
            style: TextStyle(color: Colors.black87, fontSize: 15.0),
          ),
          loginColor: Colors.white,
          loginRadius: 4.0,
          loginOnPress: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        LoginButton(
          loginImage: Image.asset('assets/images/flogo.png'),
          loginText: Text(
            'Login with facebook',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          loginColor: Colors.blue,
          loginRadius: 4.0,
          loginOnPress: () {},
        ),
      ],
    ),
  );
}
