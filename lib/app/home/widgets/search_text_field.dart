import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: ColorStyle.bgGreyColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Cari dengan mengetik barang',
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.green,
                size: 28.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
