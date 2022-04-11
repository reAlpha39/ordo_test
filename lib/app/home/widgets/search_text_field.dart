import 'package:flutter/material.dart';
import 'package:ordo_test/presentation/constant.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyle.bgGreyColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Cari dengan mengetik barang',
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
