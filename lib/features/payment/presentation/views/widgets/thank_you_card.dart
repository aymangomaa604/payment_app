import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/item_info_body.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/total_price_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.withOpacity(.4)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Thank You!',
              style: Styles.style25,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'yor transaction was successfully',
              style: Styles.style18,
            ),
            SizedBox(
              height: 40,
            ),
            ItemInfoBody(
              name: 'date',
              value: '01/24/2023',
            ),
            SizedBox(
              height: 20,
            ),
            ItemInfoBody(
              name: 'time',
              value: '01/24/2023',
            ),
            SizedBox(
              height: 20,
            ),
            ItemInfoBody(
              name: 'to',
              value: 'Ayman Gomaa',
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            TotalPrice(name: 'Total', value: r'$50.00'),
            const SizedBox(
              height: 40,
            ),
            const CardInfoWidget(),
            const SizedBox(
              height: 70,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 80,
                ),
                Container(
                  width: 120,
                  height: 70,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1.5,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  )),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.style25.copyWith(color: Colors.green),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
