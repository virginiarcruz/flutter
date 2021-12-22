import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging-interceptor.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 5),
);

const String baseUrl = '192.168.18.230:8080';
