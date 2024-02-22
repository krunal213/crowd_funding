import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'company/bloc/company_bloc.dart';
import 'company/repository/company_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'company/repository/datasource/network/company_network_datasource.dart';
import 'company/repository/datasource/network/company_rest_client.dart';
import 'company/repository/datasource/sharedpref/company_disc_datasource.dart';

initObjects(){
  GetIt getIt = GetIt.I;
  final dio = getIt.registerSingleton<Dio>(Dio());
  final sharedPreferences = SharedPreferences.getInstance();
  final companyRestClient =
  getIt.registerSingleton<CompanyRestClient>(CompanyRestClient(dio));
  getIt.registerFactory<CompanyBloc>(() => CompanyBloc(CompanyRepositoryImpl(
      CompanyDiscDataSourceImpl(sharedPreferences),
      CompanyNetworkDataSourceImpl(companyRestClient))));
}

