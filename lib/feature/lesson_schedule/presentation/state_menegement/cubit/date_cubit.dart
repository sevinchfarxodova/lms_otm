import 'package:flutter_bloc/flutter_bloc.dart';

class DateCubit extends Cubit<DateTime> {
  DateCubit() : super(DateTime.now());

  void selectDate(DateTime date) => emit(date);
  void nextWeek() => emit(state.add(Duration(days: 7)));
  void previousWeek() => emit(state.subtract(Duration(days: 7)));
}