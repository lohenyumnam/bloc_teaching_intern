part of 'color_cubit.dart';

enum ColorStatus {
  initial,
  loading,
  loaded,
  error,
}

class ColorState extends Equatable {
  const ColorState({
    // required this.status,
    required this.color,
  });

  // final ColorStatus status;
  final Color color;

  @override
  List<Object> get props => [color];
}
