import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/constant.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: ClipOval(
          child: Material(
            color: ColorStyle.cargooo,
            child: InkWell(
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 20.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
