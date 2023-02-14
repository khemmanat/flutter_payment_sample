import 'package:flutter/material.dart';
import 'package:flutter_payment_sample/core/constants/payment/omise.dart';
import 'package:flutter_payment_sample/core/widgets/base_view.dart';
import 'package:omise_flutter/omise_flutter.dart';

class OmisePaymentPage extends StatefulWidget {
  const OmisePaymentPage({Key? key}) : super(key: key);

  @override
  State<OmisePaymentPage> createState() => _OmisePaymentPageState();
}

class _OmisePaymentPageState extends State<OmisePaymentPage> {
  OmiseFlutter omise = OmiseFlutter(OmiseConstant.publicKey);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        child: Column(
      children: [
        const Text('Omise Payment Page'),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'))
      ],
    ));
  }
}
