import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/my_card_view_body.dart';
import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          'My cart',
          style: Styles.style25,
        ),
      ),
      body: MyCardViewBody(),
    );
  }
}
