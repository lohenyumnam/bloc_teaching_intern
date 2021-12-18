import 'package:bloc_teaching_intern/src/color/data/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorPreviewerView extends StatelessWidget {
  const ColorPreviewerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = context
        .select<ColorCubit, Color>((colorCubit) => colorCubit.state.color);

    return Container(
      margin: const EdgeInsets.all(16),
      color: c,
      height: 200,
      width: 200,
    );
  }
}
