import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/custom_bottom_navbar/custom_bottom_navbar_cubit.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BottomNavbarButton(
            index: 0,
            assetActive: 'assets/icons/order_inactive.png',
            assetInactive: 'assets/icons/order_inactive.png',
          ),
          _BottomNavbarButton(
            index: 1,
            assetActive: 'assets/icons/exchange_inactive.png',
            assetInactive: 'assets/icons/exchange_inactive.png',
          ),
          _BottomNavbarButton(
            index: 2,
            assetActive: 'assets/icons/coolicon_active.png',
            assetInactive: 'assets/icons/coolicon_inactive.png',
          ),
          _BottomNavbarButton(
            index: 3,
            assetActive: 'assets/icons/graph_inactive.png',
            assetInactive: 'assets/icons/graph_inactive.png',
          ),
          _BottomNavbarButton(
            index: 4,
            assetActive: 'assets/icons/profile_inactive.png',
            assetInactive: 'assets/icons/profile_inactive.png',
          ),
        ],
      ),
    );
  }
}

class _BottomNavbarButton extends StatelessWidget {
  const _BottomNavbarButton({
    Key? key,
    required this.assetInactive,
    required this.assetActive,
    required this.index,
  }) : super(key: key);

  final String assetInactive;
  final String assetActive;
  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CustomBottomNavbarCubit>();
    return GestureDetector(
      onTap: () => cubit.changePage(index),
      child: BlocBuilder<CustomBottomNavbarCubit, CustomBottomNavbarState>(
        builder: (context, state) {
          return Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  cubit.selectedPage == index ? assetActive : assetInactive,
                ),
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }
}
