import 'dart:io';
import 'package:http/http.dart';

class AuthenticatedHttpClient extends BaseClient {
  AuthenticatedHttpClient({
    Client? innerClient,
  }) : _innerClient = innerClient ?? Client();

  final Client _innerClient;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final token = ""; //TODO: get token
    if (token != null) {
      request.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    return _innerClient.send(request);
  }
}
