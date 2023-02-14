import 'package:flutter/material.dart';
import 'package:flutter_payment_sample/core/widgets/base_view.dart';
import 'package:flutter_payment_sample/features/payment/pages/payment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        child: Column(
      children: [
        const Text('Home Page'),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()));
            },
            child: const Text('Payment Method'))
      ],
    ));
  }
}
