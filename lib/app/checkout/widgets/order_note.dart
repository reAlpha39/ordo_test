import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/note/note_cubit.dart';

class OrderNote extends StatelessWidget {
  const OrderNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Catatan Pembayaran',
            style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0x7E000000),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            maxLines: 3,
            controller: cubit.catatanPesanan,
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFF8A7F7F),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFCDCDCD),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Ketik disini...',
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFFCDCDCD),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
