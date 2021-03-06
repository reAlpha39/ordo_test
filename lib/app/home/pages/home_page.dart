import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/app/home/widgets/product_card.dart';
import 'package:ordo_test/app/home/widgets/top_navigation_bar.dart';
import 'package:ordo_test/injection.dart';

import '../../../presentation/blocs/carousel_card/carousel_card_cubit.dart';
import '../../../presentation/widgets/carousel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CarouselCardCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const TopNavigationBar(),
        ),
        body: _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  _HomeBody({Key? key}) : super(key: key);

  final assetImageList = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image6.png',
    'assets/images/image7.png',
    'assets/images/image14.png',
    'assets/images/image13.png',
    'assets/images/image12.png',
    'assets/images/image11.png',
  ];

  final backgroundImageList = [
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.green.shade100,
    Colors.yellow.shade900,
    Colors.green.shade100,
    Colors.green.shade100,
    Colors.green.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CarouselCard(
              asset: 'assets/images/adaaqua.png',
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  bottom: 16,
                  left: 4,
                  right: 4,
                ),
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 15.w / 18.h,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                ),
                itemBuilder: (context, index) => ProductCard(
                  assetImage: assetImageList[index],
                  backgroundColor: backgroundImageList[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
