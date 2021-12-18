import 'package:bloc_teaching_intern/src/home/home.dart';
import 'package:flutter/material.dart';

import 'multi_provider.wrapper.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return BlocProvider<ColorCubit>(
    //   create: (context) => ColorCubit(),
    //   child: BlocProvider<CounterCubit>(
    //     create: (context) => CounterCubit(),
    //     child: MaterialApp(
    //       title: 'Flutter Demo',
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //       ),
    //       home: const HomePage(),
    //     ),
    //   ),
    // );

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider<ColorCubit>(create: (context) => ColorCubit()),
    //     BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
    //   ],
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: const HomePage(),
    //   ),
    // );

    return MultiProviderWrapper(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
