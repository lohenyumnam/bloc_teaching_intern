part of 'counter_cubit.dart';

class CounterState extends Equatable {
  const CounterState({required this.count});

  final int count;

  @override
  List<Object?> get props => [
        count,
      ];
}
