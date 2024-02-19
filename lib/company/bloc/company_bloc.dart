import 'dart:async';
import 'dart:io';
import 'package:crowdfunding/company/contract.dart';
import 'package:rxdart/rxdart.dart';

/*class _EmailErrorException implements Exception {
  String cause = 'Enter valid name';

  _EmailErrorException();
}

class _PassWordErrorException implements Exception {
  String cause = 'Enter valid password';

  _PassWordErrorException();
}*/

class CompanyBloc {

  late final CompanyRepository _companyRepository;

  CompanyBloc(this._companyRepository);

/*final _emailController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream;

  final _passwordController = BehaviorSubject<String>();

  Stream<String> get password => _passwordController.stream;

  Function(String) get onEmailChanged => _emailController.sink.add;

  Function(String) get onPasswordChanged => _passwordController.sink.add;

  final _isUserValidController = BehaviorSubject<Result>();

  Stream<Result> get isValid => _isUserValidController.stream;

  LoginBloc(this._loginRepository);

  Stream<Result> isUserLogin() async* {
    try {
      yield await _loginRepository.isUserLogin() == true
          ? Success(null)
          : throw Exception();
    } on Exception catch (e) {
      yield Error(e);
    }
  }

  Future<void> isUserValid() async {
    try {
      _isUserValidController.add(Loading());
      final email = _emailController.valueOrNull;
      final password = _passwordController.valueOrNull;
      if (email == null || email.isEmpty) {
        throw _EmailErrorException();
      }
      if (password == null || password.isEmpty) {
        throw _PassWordErrorException();
      }
      _isUserValidController.add(
          await _loginRepository.isUserValid(email, password) == true
              ? Success(null)
              : throw Exception());
    } on _EmailErrorException catch (e) {
      _emailController.addError(e.cause);
      _isUserValidController.add(Error(e));
    } on _PassWordErrorException catch (e) {
      _passwordController.addError(e.cause);
      _isUserValidController.add(Error(e));
    } on DioError catch (e) {
      if (e.type == DioErrorType.other) {
        if (e.error is SocketException) {
          _isUserValidController.add(Error(NoInternetConnectionException()));
        }
      } else if (e.type == DioErrorType.response) {
        _isUserValidController.add(Error(SomethingWentWrongException()));
      }
    } on Exception catch (e) {
      _isUserValidController.add(Error(e));
    }
  }*/

}
