import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:news/modules/Intro/domain/data/intro_item_dto.dart';
import 'package:news/modules/Intro/presentation/main/bloc/intro_view_bloc.dart';
import 'package:news/modules/Intro/presentation/main/cubit/intro_cubit_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:news/modules/home/home_args.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TEST LIST",
        theme: ThemeData(primaryColor: Colors.red),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => IntroViewBloc(),
            ),
            BlocProvider(
              create: (context) => IntroCubitCubit(),
            ),
          ],
          child: IntroPage(),
        ));
  }
}

class IntroPage extends StatefulHookWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<IntroItemDto> listIntro = [];
  bool isLoading = false;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scrollController = useScrollController();
    _scrollController.addListener(() {
      debugPrint(
          "page ${_scrollController.position.extentAfter} -> loading $isLoading");
      if (_scrollController.position.extentAfter < 300 && !isLoading) {
        context.read<IntroCubitCubit>().fetchIntro();
      }
    });
    return Scaffold(
      body: BlocBuilder<IntroCubitCubit, IntroViewState>(
        builder: (context, state) {
          debugPrint("state -> ${state.viewStatus.name}");
          switch (state.viewStatus) {
            case IntroViewStatus.loading:
              isLoading = true;

              break;
            default:
              isLoading = false;

              break;
          }

          return ListView.builder(
            controller: _scrollController,
            itemCount: state.intro.length + 2,
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == state.intro.length + 1) {
                return ElevatedButton(
                  child: const Text('Fetch'),
                  onPressed: () {
                    context.read<IntroCubitCubit>().fetchIntro();
                    // context.read<IntroViewBloc>().add(IntroViewEventFetch());
                  },
                );
              } else if (state.intro.isNotEmpty && index < state.intro.length) {
                return GestureDetector(
                    onTap: () {
                      context.pushNamed("home",
                          extra: HomeArgs(name: "siapap"));
                    },
                    child: Row(children: [
                      Image.network(
                        state.intro[index].url,
                        width: 50,
                        height: 50,
                      ),
                      Text("index ${index}"),
                    ]));
              } else {
                return const Text("index No data");
              }
            },
          );
        },
      ),
    );
  }
}
