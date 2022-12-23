import 'package:news/commons/network/data/response/base_response.dart';
import 'package:news/modules/Intro/remote/data/response/intro_response.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:news/modules/Intro/remote/intro_web_services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../../commons/network/LogInterceptor.dart';

class IntroRemoteDataSource implements IntroWebServices {
  late Dio _dio;
  late IntroWebServices _introWebServices;

  IntroRemoteDataSource() {
    _dio = Dio(BaseOptions(contentType: "application/json"));
    // _dio.interceptors.add(LoggingInterceptor());
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));

    _introWebServices = IntroWebServices(_dio);
  }

  @override
  Future<BaseResponse<IntroResponse>> getListIntro() async {
    return _introWebServices.getListIntro();
  }
}
