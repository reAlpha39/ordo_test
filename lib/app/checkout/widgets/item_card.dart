import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_test/app/checkout/blocs/note/note_cubit.dart';
import 'package:ordo_test/presentation/constant/constant.dart';
import 'package:ordo_test/presentation/widgets/pill_card.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imageAsset,
    required this.index,
  }) : super(key: key);

  final String title;
  final String price;
  final String imageAsset;
  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 60.w,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorStyle.bgGreyColor,
              blurRadius: 7,
              spreadRadius: 1,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: 90,
                    minHeight: 90,
                    minWidth: 90,
                    maxWidth: 90,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorStyle.bgGreyColor,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    imageAsset,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: ColorStyle.cargooo,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PillCard(
                  backgroundColor: ColorStyle.cartago_,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => cubit.removeItem(index),
                        child: Text(
                          '-',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      BlocBuilder<NoteCubit, NoteState>(
                        builder: (context, state) {
                          return Text(
                            cubit.totalItemList[index].toString(),
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () => cubit.addItem(index),
                        child: Text(
                          '+',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                BlocBuilder<NoteCubit, NoteState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () => cubit.noteControllerList[index].text != ''
                          ? cubit.clearController(index)
                          : cubit.toggleNote(index),
                      child: PillCard(
                        backgroundColor:
                            cubit.noteControllerList[index].text != ''
                                ? ColorStyle.cartago_
                                : ColorStyle.cargooo,
                        child: Row(
                          children: [
                            Icon(
                              cubit.noteControllerList[index].text != ''
                                  ? Icons.delete_forever_rounded
                                  : Icons.edit,
                              color: Colors.white,
                              size: 14.sp,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              cubit.noteControllerList[index].text != ''
                                  ? 'Hapus Catatan'
                                  : 'Catatan',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
