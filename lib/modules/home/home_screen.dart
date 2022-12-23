import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:news/commons/ui/app_theme.dart';
import 'package:news/modules/home/home_args.dart';

class HomeScreen extends StatefulWidget {
  final HomeArgs homeArgs;
  const HomeScreen({Key? key, required this.homeArgs}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeScreen> {
  int _counter = 0;
  List<String> list = ["1", "2", "3", "4", "5"];

  void _incCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Holow Detail"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => GoRouter.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text('jumlah ${widget.homeArgs.name} jadi $_counter')),
              TextButton(
                  onPressed: () {
                    _incCounter();
                    list.add("${_counter}");
                  },
                  child: Text(
                    "Coba",
                    style: AppTheme.baseTheme.textTheme.headline1,
                  )),
              ListView.builder(
                itemCount: list.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(children: [Text("index ${list[index]}")]);
                },
              )
            ],
          ),
        ));
  }
}
