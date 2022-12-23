import 'package:news/modules/Intro/domain/data/intro_dto.dart';
import 'package:news/modules/Intro/domain/data/intro_item_dto.dart';
import 'package:news/modules/Intro/remote/data/response/intro.dart';

import '../remote/data/response/intro_response.dart';

class IntroMapper {
  IntroDto introResponseToDto(IntroResponse response) {
    return IntroDto(
        introTotal: response.introTotal ?? 0,
        listIntro: response.intro?.map((e) => introItemToDto(e)).toList() ??
            List.empty());
  }

  IntroItemDto introItemToDto(Intro response) {
    return IntroItemDto(
        introId: response.introId ?? 0,
        title: response.title ?? "",
        position: response.position ?? 0,
        assetId: response.assetId ?? 0,
        url: response.url ?? "");
  }
}
