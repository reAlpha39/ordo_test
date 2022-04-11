import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'carousel_card_state.dart';
part 'carousel_card_cubit.freezed.dart';

@injectable
class CarouselCardCubit extends Cubit<CarouselCardState> {
  CarouselCardCubit() : super(const CarouselCardState.initial());

  int carouselCardIndex = 0;
  final CarouselController carouselController = CarouselController();
  final ScrollController scrollController = ScrollController();

  void getPoolingCardIndex(int index) {
    emit(const CarouselCardState.loading());
    carouselCardIndex = index;
    emit(const CarouselCardState.changed());
  }
}
