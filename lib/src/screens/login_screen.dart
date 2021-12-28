import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: const EdgeInsets.only(top: 15.0)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'example@gmail.com', labelText: 'Email Address'),
    );
  }

  Widget passwordField() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  Widget submitButton() {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15));

    return ElevatedButton(
      style: style,
      child: const Text('Login'),
      onPressed: () {},
    );
  }
}
