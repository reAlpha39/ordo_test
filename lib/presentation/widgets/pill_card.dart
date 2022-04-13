import 'package:flutter/material.dart';

class PillCard extends StatelessWidget {
  const PillCard({
    Key? key,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 3,
        ),
        child: child,
      ),
    );
  }
}
