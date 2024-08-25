import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/customButton.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          SizedBox(
            height: 10,
          ),
          CustomButton(name: 'Compelete'),
        ],
      ),
    );
  }
}