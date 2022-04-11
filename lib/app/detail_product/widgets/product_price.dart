import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../presentation/constant/constant.dart';
import '../../../presentation/widgets/pill_card.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tas Gucci',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                PillCard(
                  backgroundColor: ColorStyle.ratingColor,
                  child: Text(
                    'Barang Bekas',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                PillCard(
                  backgroundColor: ColorStyle.cargooo,
                  child: Text(
                    'Stok 100',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rp. 126.000',
              style: TextStyle(
                fontFamily: 'Inter',
                decoration: TextDecoration.lineThrough,
                fontSize: 22.sp,
                color: ColorStyle.cargooo,
              ),
            ),
            PillCard(
              backgroundColor: ColorStyle.cartago_,
              child: Text(
                'Diskon 10%',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        Text(
          'Rp. 100.500',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 19.sp,
            fontWeight: FontWeight.w800,
            color: ColorStyle.cargooo,
          ),
        ),
      ],
    );
  }
}
