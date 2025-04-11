import 'package:flutter/cupertino.dart';

class ConfigSize extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const ConfigSize({required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return mobile;
    } else {
      return web;
    }
  }

  static isWeb(BuildContext context) {}

  static isMobile(BuildContext context) {}
}
