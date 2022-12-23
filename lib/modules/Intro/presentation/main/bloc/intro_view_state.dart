part of 'intro_view_bloc.dart';

class IntroViewState extends Equatable {
  final List<IntroItemDto> intro;
  final bool isListEnd;
  final IntroViewStatus viewStatus;

  const IntroViewState(
      {this.viewStatus = IntroViewStatus.initial,
      this.intro = const <IntroItemDto>[],
      this.isListEnd = false});

  IntroViewState copyWith({
    required IntroViewStatus viewStatus,
    List<IntroItemDto>? intro,
    bool? isListEnd,
  }) {
    return IntroViewState(
      viewStatus: viewStatus,
      intro: List.of(this.intro)..addAll(intro ?? []),
      isListEnd: isListEnd ?? this.isListEnd,
    );
  }

  @override
  List<Object> get props => [viewStatus, intro, isListEnd];
}

enum IntroViewStatus { initial, loading, loaded, failed }
