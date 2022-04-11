import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/constant.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        ClipOval(
          child: Material(
            color: ColorStyle.cargooo,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SizedBox(
                height: 30.h,
                width: 33.w,
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
