import 'package:flutter/material.dart';
import './screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  build(context) {
    return MaterialApp(
      title: 'Log me in',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login form - stateful'),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
