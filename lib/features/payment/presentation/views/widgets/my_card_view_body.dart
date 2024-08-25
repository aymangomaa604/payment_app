import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/deatails_view.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/button_sheet.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/customButton.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/item_info_body.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 20,
          ),
          const ItemInfoBody(
            name: 'Order Subtotal',
            value: '42.44',
          ),
          const SizedBox(
            height: 3,
          ),
          const ItemInfoBody(
            name: 'Order Subtotal',
            value: '42.44',
          ),
          const SizedBox(
            height: 3,
          ),
          const ItemInfoBody(
            name: 'Order Subtotal',
            value: '42.44',
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(),
          const SizedBox(
            height: 15,
          ),
          TotalPrice(name: 'total price', value: r'$44.44'),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            onTap: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return const BottomSheetBody();
                  });
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return DeatailsView();
              // }));
            },
            name: 'Complete Payment',
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
