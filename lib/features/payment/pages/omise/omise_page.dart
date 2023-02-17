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
  TextEditingController omiseToken = TextEditingController();

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
                child: Text('Create Token')),
            ElevatedButton(
                onPressed: () {
                  createSource();
                },
                child: Text('Create Source')),
            ElevatedButton(
                onPressed: () {
                  retrieveCapability();
                },
                child: Text('Retrieve Capability')),
            ElevatedButton(
                onPressed: () {
                  charge();
                },
                child: Text('Charge'))
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: const Text('Back'))
          ],
        ));
  }

  createToken() async {
    final token = await omise.token
        .create('JOHN DOE', '4242424242424242', '10', '2024', '123');
    setState(() {
      omiseToken.text = token.id!;
    });
    // print('TOKEN: ${token.id}');
  }

  createSource() async {
    final source =
        await omise.source.create(10000, 'thb', 'internet_banking_bay');
    print('SOURCE ID: ${source.id}');
  }

  retrieveCapability() async {
    final capability = await omise.capability.retrieve();
    capability.paymentMethods?.forEach((element) {
      print(element.name);
    });
  }

  charge() async {
    final charge = await omise.client.post('api.omise.co', [
      '/charges'
    ], data: {
      'amount': 10000,
      'currency': 'thb',
      'source': 'src_test_5uu37nqrpwhsa13ui2z',
      'return_uri': 'http://www.example.com'
    });
    print('CHARGE: $charge');
  }
}
