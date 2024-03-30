import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 2);
    });

    on<CounterDecremented>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 2);
    });
  }
}