import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './blocs/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me in',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Login form - bloc'),
          ),
          body: const LoginScreen(),
        ),
      ),
    );
  }
}
