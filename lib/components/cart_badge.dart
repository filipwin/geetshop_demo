import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  final int number;

  const CartBadge({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 16,
        height: 16,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
