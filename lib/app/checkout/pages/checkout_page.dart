import 'package:flutter/material.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/custom_back_button.dart';

import '../widgets/item_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            color: ColorStyle.cargooo,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const CustomBackButton(),
      ),
      body: const _CheckoutBody(),
    );
  }
}

class _CheckoutBody extends StatelessWidget {
  const _CheckoutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: const [
          ItemCard(
            imageAsset: 'assets/images/image11.png',
            title: 'Baju Muslim',
            price: 'Rp. 75.000',
          ),
          ItemCard(
            imageAsset: 'assets/images/image11.png',
            title: 'Baju Muslim',
            price: 'Rp. 75.000',
          ),
        ],
      ),
    );
  }
}
