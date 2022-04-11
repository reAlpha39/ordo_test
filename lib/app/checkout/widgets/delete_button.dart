import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: ClipOval(
              child: Material(
                color: ColorStyle.cargooo,
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
