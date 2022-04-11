import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_test/app/home/widgets/rating_label.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/pill_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key, required this.assetImage, required this.backgroundColor})
      : super(key: key);

  final String assetImage;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('product_detail'),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Image.asset(
                      assetImage,
                      fit: BoxFit.contain,
                    ),
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
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 22.sp,
                      color: ColorStyle.cargooo,
                    ),
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
            Text('Rp. 4500',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                    color: ColorStyle.cargooo,
                  ),
                )),
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
