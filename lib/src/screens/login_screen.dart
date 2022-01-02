import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final bloc = Provider.of(context);

    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          Container(margin: const EdgeInsets.only(top: 15.0)),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
            hintText: 'example@gmail.com',
            labelText: 'Email Address',
            errorText: snapshot.error?.toString(),
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.error?.toString(),
          ),
        );
      },
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
