import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/deatails_view_body.dart';
import 'package:flutter/material.dart';

class DeatailsView extends StatelessWidget {
  const DeatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          'Payment Details',
          style: Styles.style25,
        ),
      ),
      body: DeatailsViewBody(),
    );
  }
}
