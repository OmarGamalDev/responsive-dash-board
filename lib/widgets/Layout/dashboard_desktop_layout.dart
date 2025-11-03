import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(flex: 1, child: const CustomDrawer())]);
  }
}
