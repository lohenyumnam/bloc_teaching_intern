import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(const ColorState(color: Colors.red));

  void changeColor(Color color) {
    emit(ColorState(color: color));
  }
}
