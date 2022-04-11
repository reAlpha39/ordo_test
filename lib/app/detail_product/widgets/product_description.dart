import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vendor',
          style: TextStyle(
            color: ColorStyle.tukode_,
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CircleAvatar(
                    foregroundImage: AssetImage(
                      'assets/images/profile_picture_1.png',
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Eiger Store',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorStyle.cargooo,
                  size: 22.sp,
                ),
                Text(
                  '5.0',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorStyle.cargooo,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' | 200 Terjual',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorStyle.cargooo,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Deskripsi',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorStyle.tukode_,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorStyle.tukode_,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
