import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter2/app.dart';
import 'package:flutter_counter2/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp1());
}
