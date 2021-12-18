import 'dart:developer';

import 'package:bloc_teaching_intern/src/home/data/logic/logic.dart';
import 'package:bloc_teaching_intern/src/home/page/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.watch<CounterCubit>();
    // final counterCubit = BlocProvider.of<CounterCubit>(context, listen: true);
    final counterState = counterCubit.state;
    final count = counterState.count;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text('$count'),
          ElevatedButton(
            child: const Text('Increment'),
            onPressed: () {
              // final c = BlocProvider.of<CounterCubit>(context);
              final c = context.read<CounterCubit>();
              c.increment();
            },
          ),
          ElevatedButton(
            child: const Text('Go to Home Details Page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeDetailsPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
