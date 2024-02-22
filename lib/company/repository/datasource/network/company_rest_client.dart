import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'company_rest_client.g.dart';

//https://pub.dev/packages/retrofit
@RestApi(baseUrl: "https://reqres.in/")
abstract class CompanyRestClient {
  factory CompanyRestClient(Dio dio, {String baseUrl}) = _CompanyRestClient;

  /* @POST("/api/login")
  Future<AuthenticateUserResponse> login(
      @Body() AuthenticateUserRequest request);*/

}
