import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ordo_test/app/home_root/blocs/custom_bottom_navbar/custom_bottom_navbar_cubit.dart';
import 'package:ordo_test/injection.dart';
import 'package:ordo_test/presentation/blocs/carousel_card/carousel_card_cubit.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/custom_back_button.dart';

import '../../../presentation/widgets/carousel_card.dart';
import '../../home_root/widgets/custom_bottom_navbar.dart';
import '../widgets/product_description.dart';
import '../widgets/product_price.dart';
import '../widgets/review_rating.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PRODUK DETAIL',
          style: TextStyle(
            fontSize: 24.sp,
            color: ColorStyle.cargooo,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const CustomBackButton(),
        actions: [
          GestureDetector(
            onTap: () => context.pushNamed('checkout'),
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
          const SizedBox(width: 24),
        ],
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<CarouselCardCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<CustomBottomNavbarCubit>(),
          ),
        ],
        child: const _ProductDetailBody(),
      ),
    );
  }
}

class _ProductDetailBody extends StatelessWidget {
  const _ProductDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: SingleChildScrollView(
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
                          topLeft: Radius.elliptical(65, 55),
                        ),
                      ),
                      height: 300.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(60, 50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
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
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: CustomBottomNavbar(),
        ),
      ],
    );
  }
}
