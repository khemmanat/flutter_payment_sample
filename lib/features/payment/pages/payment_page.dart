import 'package:flutter/material.dart';
import 'package:flutter_payment_sample/core/widgets/base_view.dart';
import 'package:flutter_payment_sample/features/payment/pages/omise/omise_page.dart';
import 'package:flutter_payment_sample/features/payment/pages/stripe/stripe_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(centerTitle: true, title: const Text('Choose Payment')),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OmisePaymentPage()));
              },
              child: const Text('Omise')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StripePaymentPage()));
              },
              child: const Text('Stripe')),
        ],
      ),
    );
  }
}
