import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'login with your email and password \n or go with social media to login',
              textAlign: TextAlign.center,
            ),
            LoginForm()
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
