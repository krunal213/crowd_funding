import 'package:crowdfunding/company/contract.dart';
import 'package:crowdfunding/company/repository/datasource/network/company_rest_client.dart';

class CompanyNetworkDataSourceImpl implements CompanyNetworkDataSource {
  late final CompanyRestClient _companyRestClient;

  CompanyNetworkDataSourceImpl(this._companyRestClient);

/*LoginNetworkDataSourceImpl(this._restClient);

  @override
  Future<AuthenticateUserResponse> isUSerValid(
      String email, String password) async {
    return await _restClient.login(AuthenticateUserRequest(email, password));
  }*/
}
