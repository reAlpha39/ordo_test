import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/app/home/widgets/search_text_field.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SearchTextField()),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/options.png',
            height: 31.h,
            width: 31.w,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/bag.png',
            height: 31.h,
            width: 31.w,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/icons/notification.png',
            height: 31.h,
            width: 31.w,
          ),
        ),
      ],
    );
  }
}