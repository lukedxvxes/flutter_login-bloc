import 'dart:async';
import 'validators.dart';

class Bloc extends Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //Add data to stream - transform method is attached to the end so all data used by stream is validated.
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //Cleanup
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
