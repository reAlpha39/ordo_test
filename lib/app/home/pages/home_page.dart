import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        body: const _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const CarouselCard(
                asset: 'assets/images/adaaqua.png',
              ),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 5 / 7,
                ),
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ProductCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
