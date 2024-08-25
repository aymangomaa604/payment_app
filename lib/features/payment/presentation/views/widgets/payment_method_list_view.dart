import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> images = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];

  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  isActive = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  isActive: isActive == index,
                  image: images[index],
                ),
              ),
            );
          }),
    );
  }
}
