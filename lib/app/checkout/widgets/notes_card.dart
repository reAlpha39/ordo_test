import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ordo_test/app/checkout/blocs/note/note_cubit.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NoteCubit>();
    return Container(
      width: MediaQuery.of(context).size.width - 30.w,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Catatan Item',
            style: TextStyle(
              fontSize: 18.sp,
              color: const Color(0x7E000000),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            maxLines: 2,
            controller: cubit.noteControllerList[index],
            onChanged: (_) => cubit.changeNote(index),
            style: TextStyle(fontSize: 18.sp),
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
