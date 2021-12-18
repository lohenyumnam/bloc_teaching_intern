import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  void increment() {
    final count = state.count + 1;
    final newState = CounterState(count: count);
    emit(newState);
  }

  void decrement() {
    final count = state.count - 1;
    final newState = CounterState(count: count);
    emit(newState);
  }

  final resetValue = 0;

  void reset() {

    emit(CounterState(count: resetValue));
  }
}
