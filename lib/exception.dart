class NoInternetConnectionException implements Exception {
  final String cause = 'Check your internet connection';

  NoInternetConnectionException();

}

class SomethingWentWrongException implements Exception {
  final String cause = 'Something went wrong';

  SomethingWentWrongException();

}