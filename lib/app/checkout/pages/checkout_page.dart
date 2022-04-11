import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordo_test/app/checkout/widgets/notes_card.dart';
import 'package:ordo_test/injection.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/custom_back_button.dart';

import '../blocs/note/note_cubit.dart';
import '../widgets/delete_button.dart';
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
      body: BlocProvider(
        create: (context) => getIt<NoteCubit>()..initialData(),
        child: const _CheckoutBody(),
      ),
    );
  }
}

class _CheckoutBody extends StatelessWidget {
  const _CheckoutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      ItemCard(
                        imageAsset: cubit.imageAsset[index],
                        title: cubit.title[index],
                        price: cubit.price[index],
                        index: index,
                      ),
                      BlocBuilder<NoteCubit, NoteState>(
                        builder: (context, state) => state.maybeWhen(
                          success: () => cubit.isNoteShownList[index]
                              ? NotesCard(index: index)
                              : const SizedBox(),
                          orElse: () => const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                  const DeleteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
