import 'dart:io';
import 'package:http/http.dart';
import 'package:malkovapp/core/config/config.dart';

class AutoRefreshTokenHttpClient extends BaseClient {
  AutoRefreshTokenHttpClient({
    required this.config,
    Client? innerClient,
  })  : _innerClient = innerClient ?? Client(),
        _restClient = Client();

  final Config config;
  final Client _innerClient;
  final Client _restClient;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final StreamedResponse response = await _innerClient.send(request);
    if (response.statusCode == HttpStatus.unauthorized) {
      final isRefreshed = await refreshToken();
      if (!isRefreshed) {
        return _innerClient.send(request);
      } else {
        return response;
      }
    } else {
      return response;
    }
  }

  Future<bool> refreshToken() async {
    return await _refreshToken();
  }

  Future<bool> _refreshToken() async {
    final token = ""; //TODO: get token
    final response = await _restClient.put(headers: {
      HttpHeaders.authorizationHeader: 'Bearer $token',
    }, Uri.parse('') //TODO: add Url,
        );

    return response.statusCode == HttpStatus.noContent;
  }
}
