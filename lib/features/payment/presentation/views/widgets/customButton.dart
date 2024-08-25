import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.name, this.onTap});
  final String name;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            name,
            style: Styles.style25,
          ),
        ),
      ),
    );
  }
}
