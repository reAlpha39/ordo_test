part of 'carousel_card_cubit.dart';

@freezed
class CarouselCardState with _$CarouselCardState {
  const factory CarouselCardState.initial() = _Initial;
  const factory CarouselCardState.loading() = _Loading;
  const factory CarouselCardState.changed() = _Changed;
}
