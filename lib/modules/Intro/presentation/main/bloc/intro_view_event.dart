part of 'intro_view_bloc.dart';

abstract class IntroViewEvent extends Equatable {
  const IntroViewEvent();

  @override
  List<Object> get props => [];
}

class IntroViewEventFetch extends IntroViewEvent {}

class IntroViewEventRefresh extends IntroViewEvent {}
