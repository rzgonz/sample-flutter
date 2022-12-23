import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:news/modules/Intro/domain/data/intro_dto.dart';
import 'package:news/modules/Intro/domain/data/intro_item_dto.dart';
import 'package:news/modules/Intro/domain/intro_impl.dart';
part 'intro_view_event.dart';
part 'intro_view_state.dart';

class IntroViewBloc extends Bloc<IntroViewEvent, IntroViewState> {
  final IntroImpl _introImpl = IntroImpl();
  IntroViewBloc() : super(const IntroViewState()) {
    on<IntroViewEvent>((event, emit) {});

    on<IntroViewEventFetch>((event, emit) async {
      emit(state.copyWith(viewStatus: IntroViewStatus.loading));
      await _introImpl
          .getListIntro()
          .then((value) => {
                //listIntro.addAll(value.listIntro),
                emit(state.copyWith(
                    viewStatus: IntroViewStatus.loaded, intro: value.listIntro))
              })
          .onError((error, stackTrace) => {
                debugPrint("errorr ${error}"),
                emit(state.copyWith(viewStatus: IntroViewStatus.failed))
              });
    });

    on<IntroViewEventRefresh>((event, emit) {});
  }
}
