import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/injection.dart';

import '../../home/pages/home_page.dart';
import '../blocs/custom_bottom_navbar/custom_bottom_navbar_cubit.dart';
import '../widgets/custom_bottom_navbar.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomBottomNavbarCubit>(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: _HomeRootBody(),
      ),
    );
  }
}

class _HomeRootBody extends StatelessWidget {
  const _HomeRootBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CustomBottomNavbarCubit>();
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: PageView(
          controller: cubit.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            _DummyPage(text: 'Page 1'),
            _DummyPage(text: 'Page 2'),
            HomePage(),
            _DummyPage(text: 'Page 4'),
            _DummyPage(text: 'Page 5'),
          ],
        ),
      ),
      const Align(
        alignment: Alignment.bottomCenter,
        child: CustomBottomNavbar(),
      ),
    ]);
  }
}

class _DummyPage extends StatelessWidget {
  const _DummyPage({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}
