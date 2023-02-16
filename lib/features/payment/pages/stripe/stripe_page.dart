import 'package:flutter/material.dart';
import 'package:flutter_payment_sample/core/widgets/base_view.dart';

class StripePaymentPage extends StatefulWidget {
  const StripePaymentPage({Key? key}) : super(key: key);

  @override
  State<StripePaymentPage> createState() => _StripePaymentPageState();
}

class _StripePaymentPageState extends State<StripePaymentPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBar: AppBar(centerTitle: true, title: const Text('Pay with Stripe')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ));
  }
}
