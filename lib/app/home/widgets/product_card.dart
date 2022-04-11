import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ordo_test/app/home/widgets/rating_label.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('product_detail'),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Image.asset(
                    'assets/images/image1.png',
                  ),
                ),
                const RatingLabel(),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp. 6000',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    decoration: TextDecoration.lineThrough,
                    fontSize: 22.sp,
                    color: ColorStyle.cargooo,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorStyle.cartago_,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    child: Text(
                      'Diskon 10%',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              'Rp. 4500',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 22.sp,
                fontWeight: FontWeight.w800,
                color: ColorStyle.cargooo,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Lorem ipsum',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
