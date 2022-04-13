import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ordo_test/app/home/widgets/search_text_field.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        const Expanded(
          child: SearchTextField(),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/options.png',
            height: 50.h,
            width: 50.w,
          ),
        ),
        GestureDetector(
          onTap: () => context.pushNamed('checkout'),
          child: Image.asset(
            'assets/icons/bag.png',
            height: 50.h,
            width: 50.w,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/notification.png',
            height: 50.h,
            width: 50.w,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
