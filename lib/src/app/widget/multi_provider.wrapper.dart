import 'package:bloc_teaching_intern/src/color/data/logic/logic.dart';
import 'package:bloc_teaching_intern/src/home/data/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiProviderWrapper extends StatelessWidget {
  const MultiProviderWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(create: (context) => ColorCubit()),
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
      ],
      child: child,
    );
  }
}
