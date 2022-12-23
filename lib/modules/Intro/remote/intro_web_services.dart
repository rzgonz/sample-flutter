import 'package:dio/dio.dart';
import 'package:news/commons/network/data/response/base_response.dart';
import 'package:retrofit/retrofit.dart';

import 'data/response/intro_response.dart';

part 'intro_web_services.g.dart';

@RestApi(baseUrl: "https://dev-api.passgo.id/")
abstract class IntroWebServices {
  factory IntroWebServices(Dio dio, {String baseUrl}) = _IntroWebServices;

  @POST("intro/list")
  Future<BaseResponse<IntroResponse>> getListIntro();
}
