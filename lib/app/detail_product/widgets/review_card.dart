import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_test/presentation/constant/constant.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
    required this.name,
    required this.profilePictureAsset,
  }) : super(key: key);

  final String name;
  final String profilePictureAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorStyle.bgGreyColor,
            blurRadius: 7,
            spreadRadius: 1,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      profilePictureAsset,
                      height: 40.h,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        '14 min',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFFB4BBC6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: const Color(0xFFFA4A0C),
                    size: 22.sp,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '5.0',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
