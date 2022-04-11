import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class RatingLabel extends StatelessWidget {
  const RatingLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: const BoxDecoration(
          color: ColorStyle.ratingColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(19),
            bottomRight: Radius.circular(19),
            topLeft: Radius.circular(19),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
              size: 16.sp,
            ),
            const SizedBox(width: 4),
            Text(
              '5.0 | 200+ rating',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
