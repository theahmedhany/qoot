import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarInitial());
  void updateIndex(int index) {
    emit(NavbarUpdate(index));
  }
}
