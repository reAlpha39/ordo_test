import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'custom_bottom_navbar_state.dart';
part 'custom_bottom_navbar_cubit.freezed.dart';

@injectable
class CustomBottomNavbarCubit extends Cubit<CustomBottomNavbarState> {
  CustomBottomNavbarCubit() : super(const CustomBottomNavbarState.initial());

  int selectedPage = 2;
  PageController pageController = PageController(initialPage: 2);

  void changePage(int index) {
    emit(const CustomBottomNavbarState.loading());
    selectedPage = index;
    pageController.jumpToPage(selectedPage);
    emit(const CustomBottomNavbarState.changed());
  }
}
