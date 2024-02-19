import 'package:crowdfunding/company/contract.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CompanyDiscDataSourceImpl implements CompanyDiscDataSource {
  late final Future<SharedPreferences> _prefs;

  CompanyDiscDataSourceImpl(this._prefs);

/*@override
  Future<bool?> isUserLogin() async {
    final SharedPreferences prefs = await _prefs;
    prefs.getString("token")?.isNotEmpty;
    return true;
  }

  @override
  Future<bool?> saveToken(String? token) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setString("token", token!);
  }*/
}
