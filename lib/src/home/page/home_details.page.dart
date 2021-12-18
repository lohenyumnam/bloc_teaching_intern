import 'dart:developer';
import 'dart:math';

import 'package:bloc_teaching_intern/src/color/data/logic/logic.dart';
import 'package:bloc_teaching_intern/src/home/data/dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterCubit>().state.count;
    final color = context.select<ColorCubit, Color>((c) => c.state.color);
    print("Home Details Page BUILD");

    return MultiBlocListener(
      listeners: [
        BlocListener<ColorCubit, ColorState>(
          listener: (context, state) {
            print("Color: " + state.color.toString());


            
          },
        ),
        BlocListener<CounterCubit, CounterState>(
          listener: (context, state) {
            print("Count : " + state.count.toString());
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text(
              'Count $count',
              style:
                  Theme.of(context).textTheme.headline4?.copyWith(color: color),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Text(' decrement '),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().reset();
              },
              child: const Text(' reset '),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ColorCubit>().changeColor(randomColor());
              },
              child: const Text(' Change Color '),
            ),
          ],
        ),
      ),
    );
  }

  Color randomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}
