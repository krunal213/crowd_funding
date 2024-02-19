import 'package:crowdfunding/company/contract.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  late final CompanyDiscDataSource _companyDiscDataSource;
  late final CompanyNetworkDataSource _companyNetworkDataSource;

  CompanyRepositoryImpl(
      this._companyDiscDataSource, this._companyNetworkDataSource);

/*@override
  Future<bool?> isUserLogin() async => await _loginDiscDataSource.isUserLogin();

  @override
  Future<bool?> isUserValid(String email, String password) async {
    var data = await _loginNetworkDataSource.isUSerValid(email, password);
    return _loginDiscDataSource.saveToken(data.token);
  }*/
}
