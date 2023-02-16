import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView({
    Key? key,
    this.appBar,
    required this.child,
    this.bottomNavigationBar,
    this.floatingActionWidget,
    this.drawer,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget child;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionWidget,
    );
  }
}
