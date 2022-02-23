import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptors.dart';

const String baseUrl = ('http://192.168.100.3:8080/transactions');

Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);
