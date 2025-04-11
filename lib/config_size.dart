import 'package:flutter/widgets.dart';

class ConfigSize extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  final double breakpoint;

  const ConfigSize({
    required this.mobile,
    required this.web,
    this.breakpoint = 600, // يمكن تغييره حسب الحاجة
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < breakpoint) {
          return mobile;
        } else {
          return web;
        }
      },
    );
  }

  static bool isWeb(BuildContext context, {double breakpoint = 600}) {
    return MediaQuery.of(context).size.width >= breakpoint;
  }

  static bool isMobile(BuildContext context, {double breakpoint = 600}) {
    return MediaQuery.of(context).size.width < breakpoint;
  }
}
