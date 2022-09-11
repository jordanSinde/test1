import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter2/counter/view/counter_page.dart';
import 'package:flutter_counter2/counter/view/counter_theme.dart';

class CounterApp1 extends StatelessWidget {
  const CounterApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const ConuterPage(),
      );
    });
  }
}
