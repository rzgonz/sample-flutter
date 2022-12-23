import 'data/intro_dto.dart';

abstract class IntroInteractorApi {
  Future<IntroDto> getData();
}
