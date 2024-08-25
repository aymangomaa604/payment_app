import 'package:checkout_payment_ui/features/payment/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ThankYouCard(),
            Positioned(
                left: -20,
                bottom: MediaQuery.of(context).size.height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                right: -20,
                bottom: MediaQuery.of(context).size.height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            const Positioned(
              top: -30,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

