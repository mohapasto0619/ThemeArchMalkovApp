import 'package:malkovapp/data/sources/network/authenticated_http_client.dart';
import 'package:malkovapp/data/sources/network/refresh_token_client.dart';
import 'package:malkovapp/data/sources/network/api_client.dart';
import 'package:http/http.dart';
import 'package:malkovapp/core/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_base_client.g.dart';

@Riverpod(keepAlive: true)
AppBaseClient appBaseClient(AppBaseClientRef ref) {
  final config = ref.watch(configProvider);
  final client = ref.watch(apiClientProvider);
  return AppBaseClient(
    config: config,
    innerClient: client,
  );
}

class AppBaseClient extends BaseClient {
  AppBaseClient({
    required Client innerClient,
    required Config config,
  }) : _innerClient = AutoRefreshTokenHttpClient(
          config: config,
          innerClient: AuthenticatedHttpClient(
            innerClient: innerClient,
          ),
        );

  final Client _innerClient;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _innerClient.send(request);
  }
}
