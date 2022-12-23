import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:news/main.dart';
import 'package:news/modules/Intro/domain/intro_interactor_api.dart';

import '../../../domain/intro_impl.dart';
import '../bloc/intro_view_bloc.dart';

part 'intro_cubit_state.dart';

class IntroCubitCubit extends Cubit<IntroViewState> {
  final IntroInteractorApi _introInteractor = getIt<IntroInteractorApi>();

  IntroCubitCubit() : super(const IntroViewState());

  void fetchIntro() => {
        emit(state.copyWith(viewStatus: IntroViewStatus.loading)),
        _introInteractor
            .getData()
            .then((value) => {
                  debugPrint(
                      "cue ${value.listIntro.length}  --> ${value.listIntro.length} "),
                  emit(state.copyWith(
                      viewStatus: IntroViewStatus.loaded,
                      intro: value.listIntro))
                })
            .onError((error, stackTrace) => {
                  debugPrint("errorr ${error}"),
                  emit(state.copyWith(viewStatus: IntroViewStatus.failed))
                })
      };
}
