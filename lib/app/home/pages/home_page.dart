import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordo_test/app/home/widgets/top_navigation_bar.dart';
import 'package:ordo_test/injection.dart';

import '../blocs/carousel_card/carousel_card_cubit.dart';
import '../widgets/carousel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CarouselCardCubit>(),
      child: const Scaffold(
        body: _HomeBody(),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            TopNavigationBar(),
            CarouselCard(),
          ],
        ),
      ),
    );
  }
}
