import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: ColorStyle.bgGreyColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Container(
          padding: const EdgeInsets.only(top: 2),
          child: TextField(
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFF8A7F7F),
            ),
            decoration: InputDecoration(
              hintText: 'Cari dengan mengetik barang',
              hintStyle: TextStyle(
                fontSize: 18.sp,
                color: const Color.fromRGBO(1, 1, 1, 0.21),
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.green.shade600,
                size: 26.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
