import 'package:news/modules/Intro/remote/data/response/intro_response.dart';

class IntroItemDto {
  int introId;
  String title;
  int position;
  int assetId;
  String url;

  IntroItemDto(
      {required this.introId,
      required this.title,
      required this.position,
      required this.assetId,
      required this.url});
}
