import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter2/counter/cubit/counter_cubit.dart';

import 'counter_view.dart';

class ConuterPage extends StatelessWidget {
  const ConuterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
