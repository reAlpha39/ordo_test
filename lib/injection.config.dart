// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/checkout/blocs/note/note_cubit.dart' as _i5;
import 'app/home_root/blocs/custom_bottom_navbar/custom_bottom_navbar_cubit.dart'
    as _i4;
import 'presentation/blocs/carousel_card/carousel_card_cubit.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CarouselCardCubit>(() => _i3.CarouselCardCubit());
  gh.factory<_i4.CustomBottomNavbarCubit>(() => _i4.CustomBottomNavbarCubit());
  gh.factory<_i5.NoteCubit>(() => _i5.NoteCubit());
  return get;
}
