import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

const String word = "monkey";

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("{$word}")
  Future getWordData(@Path("word") String word, @Query("key") String apiKey);
}

Dio buildDioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);
  dio.interceptors.add(
    PrettyDioLogger(
      maxWidth: 90,
      requestHeader: true,
      compact: true,
      error: true,
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
    ),
  );
  return dio;
}
