import 'package:flutter_bloc/flutter_bloc.dart';

class ReadMoreTextCubit extends Cubit<bool> {
  ReadMoreTextCubit() : super(false);

  void expand() => emit(true);

  void toggle() => emit(!state);
}
