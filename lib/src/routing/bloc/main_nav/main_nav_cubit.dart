


import 'package:bloc/bloc.dart';

class MainNavCubit extends Cubit<int> {
  MainNavCubit() : super(0);

  void changePage(int index) {
    emit(index);
  }
}
