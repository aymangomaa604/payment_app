import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.name, required this.value});
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: Styles.style25,
        ),
        Spacer(),
        Text(
          value,
          style: Styles.style25,
        ),
      ],
    );
  }
}
