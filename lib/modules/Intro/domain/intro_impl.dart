import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/modules/Intro/domain/data/intro_dto.dart';
import 'package:news/modules/Intro/domain/intro_interactor_api.dart';
import 'package:news/modules/Intro/domain/intro_mapper.dart';
import 'package:news/modules/Intro/domain/intro_repository.dart';

class IntroImpl implements IntroInteractorApi {
  final IntroRepository _introRepository = IntroRepository();

  Future<IntroDto> getListIntro() async {
    try {
      final response = await _introRepository.getListIntro();
      debugPrint("ayam ${response.toJson()}");
      return Future.value(IntroMapper().introResponseToDto(response));
    } catch (e) {
      debugPrint("error $e");
      return Future.error(e);
    }
  }

  @override
  Future<IntroDto> getData() async {
    try {
      final response = await _introRepository.getListIntro();
      debugPrint("ayam ${response.toJson()}");
      return Future.value(IntroMapper().introResponseToDto(response));
    } catch (e) {
      debugPrint("error $e");
      return Future.error(e);
    }
  }
}
