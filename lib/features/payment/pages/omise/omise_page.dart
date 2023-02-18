import 'package:flutter/material.dart';
import 'package:flutter_payment_sample/core/constants/payment/omise.dart';
import 'package:flutter_payment_sample/core/widgets/base_view.dart';
import 'package:flutter_payment_sample/external/omise/omise_flutter.dart';

class OmisePaymentPage extends StatefulWidget {
  const OmisePaymentPage({Key? key}) : super(key: key);

  @override
  State<OmisePaymentPage> createState() => _OmisePaymentPageState();
}

class _OmisePaymentPageState extends State<OmisePaymentPage> {
  OmiseFlutter omise = OmiseFlutter(OmiseConstant.publicKey, OmiseConstant.secretKey);

  TextEditingController omiseToken = TextEditingController();
  TextEditingController omiseSource = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBar: AppBar(centerTitle: true, title: const Text('Pay with Omise')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  createToken();
                },
                child: const Text('Create Token')),
            Text.rich(TextSpan(text: 'Token: ', children: [
              TextSpan(
                  text: omiseToken.text,
                  style: const TextStyle(color: Colors.blue))
            ])),
            ElevatedButton(
                onPressed: () {
                  createSource();
                },
                child: const Text('Create Source')),
            Text.rich(TextSpan(text: 'Source: ', children: [
              TextSpan(
                  text: omiseSource.text,
                  style: const TextStyle(color: Colors.blue))
            ])),
            ElevatedButton(
                onPressed: () {
                  retrieveCapability();
                },
                child: const Text('Retrieve Capability')),
            ElevatedButton(
                onPressed: () {
                  charge();
                },
                child: const Text('Charge')),
            Text('CHARGE'),
            Text.rich(TextSpan(text: 'Charge Detail: ', children: [
              TextSpan(
                  text: 'PENDING', style: const TextStyle(color: Colors.blue))
            ])),
          ],
        ));
  }

  createToken() async {
    final token = await omise.token
        .create('JOHN DOE', '4242424242424242', '10', '2024', '123');
    print('TOKEN ID: ${token.id}');
    setState(() {
      omiseToken.text = token.id!;
    });
  }

  createSource() async {
    final source = await omise.source.create(10000, 'thb', 'alipay');
    print('SOURCE ID: ${source.id}');
    setState(() {
      omiseSource.text = source.id!;
    });
  }

  retrieveCapability() async {
    final capability = await omise.capability.retrieve();
    capability.paymentMethods?.forEach((element) {
      print(element.name);
    });
  }

  charge() async {
    final charge = await omise.client.post('api.omise.co', [
      'charges'
    ], data: {
      'amount': 10000,
      'currency': 'thb',
      'card': omiseToken.text,
      // return_uri :  This is the url used for redirecting your customer back when 3-D Secure is used.
      // 'return_uri': 'http://localhost:3000'
    });
    print('CHARGE: $charge');
  }
}
