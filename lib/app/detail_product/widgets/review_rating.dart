import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/app/detail_product/widgets/review_card.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class ReviewRating extends StatelessWidget {
  const ReviewRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ulasan dan Penilaian',
          style: TextStyle(
            fontSize: 20.sp,
            color: ColorStyle.tukode_,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const ReviewCard(
          name: 'Maude Hall',
          profilePictureAsset: 'assets/images/profile_1.png',
        ),
        const SizedBox(height: 16),
        const ReviewCard(
          name: 'Ester Howard',
          profilePictureAsset: 'assets/images/profile_2.png',
        ),
      ],
    );
  }
}
