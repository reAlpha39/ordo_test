import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/injection.dart';
import 'package:ordo_test/presentation/blocs/carousel_card/carousel_card_cubit.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/custom_back_button.dart';
import 'package:ordo_test/presentation/widgets/pill_card.dart';

import '../../../presentation/widgets/carousel_card.dart';
import '../widgets/product_description.dart';
import '../widgets/product_price.dart';
import '../widgets/review_rating.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUK DETAIL',
          style: TextStyle(
            color: ColorStyle.cargooo,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const CustomBackButton(),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/shopping_bag.png',
              height: 32.h,
              width: 22.h,
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/notification_icons.png',
              height: 32.h,
              width: 22.h,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<CarouselCardCubit>(),
        child: const _ProductDetailBody(),
      ),
    );
  }
}

class _ProductDetailBody extends StatelessWidget {
  const _ProductDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),
          const CarouselCard(
            asset: 'assets/images/image11.png',
          ),
          const SizedBox(height: 32),
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(70, 70),
                  ),
                ),
                height: 100.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(70, 70),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
                        const ProductPrice(),
                        const SizedBox(height: 16),
                        Container(
                          height: 1,
                          color: ColorStyle.greyColor,
                        ),
                        const SizedBox(height: 16),
                        const ProductDescription(),
                        const SizedBox(height: 16),
                        const ReviewRating(),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
