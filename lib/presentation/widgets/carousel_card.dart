import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

import '../blocs/carousel_card/carousel_card_cubit.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({Key? key, required this.asset}) : super(key: key);

  final String asset;

  @override
  Widget build(BuildContext context) {
    final carouselCubit = context.read<CarouselCardCubit>();
    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselCubit.carouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 8,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              carouselCubit.getPoolingCardIndex(index);
            },
          ),
          items: [1, 2, 3]
              .map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      asset,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        BlocBuilder<CarouselCardCubit, CarouselCardState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3].asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () =>
                      carouselCubit.carouselController.animateToPage(entry.key),
                  child: Container(
                    width: carouselCubit.carouselCardIndex == entry.key
                        ? 35.w
                        : 43.w,
                    height: 11.0.h,
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: carouselCubit.carouselCardIndex == entry.key
                          ? ColorStyle.cargooo
                          : ColorStyle.cartago_,
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
