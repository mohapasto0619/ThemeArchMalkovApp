import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
Client apiClient(ApiClientRef ref) {
  return Client();
}
