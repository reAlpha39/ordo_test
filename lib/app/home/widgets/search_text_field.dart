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
        child: Container(
          padding: const EdgeInsets.only(top: 4),
          child: TextField(
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFF8A7F7F),
            ),
            decoration: InputDecoration(
              hintText: 'Cari dengan mengetik barang',
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFFCDCDCD),
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.green,
                size: 26.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
