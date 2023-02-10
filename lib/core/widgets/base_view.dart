import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView({Key? key, this.appBar, required this.child})
      : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: child),
      ),
    );
  }
}
