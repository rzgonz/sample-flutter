import 'package:flutter/foundation.dart';
import 'package:news/modules/Intro/remote/data/response/intro_response.dart';
import 'package:news/modules/Intro/remote/intro_remote_data_source.dart';

class IntroRepository {
  late IntroRemoteDataSource _introRemoteDataSource;

  IntroRepository() {
    _introRemoteDataSource = IntroRemoteDataSource();
  }

  Future<IntroResponse> getListIntro() async {
    try {
      final response = await _introRemoteDataSource.getListIntro();
      if (response.apiResultData != null) {
        debugPrint("get  1 ${response.apiResultData != null}");
        return Future.value(response.apiResultData);
      } else {
        return Future.error(Exception(response.apiDisplayMessage));
      }
    } catch (e) {
      debugPrint("error  1 $e");
      return Future.error(e);
    }
  }
}
