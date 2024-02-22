import 'dart:async';
import 'package:crowdfunding/company/contract.dart';
import 'package:crowdfunding/exception.dart';
import 'package:crowdfunding/result.dart';
import 'package:rxdart/rxdart.dart';

class _CINNumberErrorException implements Exception {
  String cause = 'Enter valid cin';

  _CINNumberErrorException();
}

class _PANNumberErrorException implements Exception {
  String cause = 'Enter valid PAN';

  _PANNumberErrorException();
}

class CompanyBloc {
  CompanyBloc(this._companyRepository);

  late final CompanyRepository _companyRepository;

  final _cinController = BehaviorSubject<String>();

  Stream<String> get cinStream => _cinController.stream;

  Function(String) get onCINChanged => _cinController.sink.add;

  final _validateCINNumberController = BehaviorSubject<Result>();

  Stream<Result> get validateCINNumberStream =>
      _validateCINNumberController.stream;

  final _panNumberController = BehaviorSubject<String>();

  Stream<String> get panNumberStream => _panNumberController.stream;

  Function(String) get onPanNumberChanged => _panNumberController.sink.add;

  final _validatePANNumberController = BehaviorSubject<Result>();

  Stream<Result> get validatePANNumberStream =>
      _validatePANNumberController.stream;

  validateCINNumber() async {
    try {
      _validateCINNumberController.add(Loading());
      final cinNumber = _cinController.valueOrNull;
      if (cinNumber == null || cinNumber.isEmpty) {
        throw _CINNumberErrorException();
      }
      _validateCINNumberController.add(await Success(null));
    } on _CINNumberErrorException catch (e) {
      _cinController.addError(e.cause);
      _validateCINNumberController.add(Error(e));
    } on Exception catch(e){
      _validateCINNumberController.add(Error(SomethingWentWrongException()));
    }
  }

  validatePANNumber() async {
    try {
      _validatePANNumberController.add(Loading());
      final panNumber = _panNumberController.valueOrNull;
      if (panNumber == null || panNumber.isEmpty) {
        throw _PANNumberErrorException();
      }
      _validatePANNumberController.add(await Success(null));
    } on _PANNumberErrorException catch (e) {
      _panNumberController.addError(e.cause);
      _validatePANNumberController.add(Error(e));
    } on Exception catch(e){
      _validatePANNumberController.add(Error(SomethingWentWrongException()));
    }
  }

  /*Stream<Result> isUserLogin() async* {
    try {
      yield await _loginRepository.isUserLogin() == true
          ? Success(null)
          : throw Exception();
    } on Exception catch (e) {
      yield Error(e);
    }
  }*/

}
