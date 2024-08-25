import 'package:checkout_payment_ui/features/payment/presentation/views/tank_you_view.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/customButton.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeatailsViewBody extends StatefulWidget {
  const DeatailsViewBody({super.key});

  @override
  State<DeatailsViewBody> createState() => _DeatailsViewBodyState();
}

class _DeatailsViewBodyState extends State<DeatailsViewBody> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodListView(),
          CustomCreditCard(
            globalKey: globalKey,
            autovalidateMode: autovalidateMode,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
              onTap: () {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThankYouView();
                  }));
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              name: 'Payment')
        ],
      ),
    );
  }
}
