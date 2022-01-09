import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Add data to stream - transform method is attached to the end so all data used by stream is validated.
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  //gives you access to email and password but we dont care in this case so we return true
  Stream<bool> get submitValid =>
      CombineLatestStream.combine2(email, password, (e, p) => true);

  //Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail. Password is $validPassword');
  }

  //Cleanup
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
