import 'package:checkout_payment_ui/features/payment/presentation/views/my_card_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentApp());
}
class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyCardView() ,
    );
  }
}