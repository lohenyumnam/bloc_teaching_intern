import 'dart:developer';

import 'package:bloc_teaching_intern/src/home/data/dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterCubit>().state.count;

    log("Home Details Page BUILD");

    return Scaffold(
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
          Text('Count $count'),
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
        ],
      ),
    );
  }
}
