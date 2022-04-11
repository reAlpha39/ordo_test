import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/custom_back_button.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUK DETAIL',
          style: TextStyle(
            color: ColorStyle.cargooo,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const CustomBackButton(),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/shopping_bag.png',
              height: 32.h,
              width: 22.h,
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/icons/notification_icons.png',
              height: 32.h,
              width: 22.h,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: _ProductDetailBody(),
    );
  }
}

class _ProductDetailBody extends StatelessWidget {
  const _ProductDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
