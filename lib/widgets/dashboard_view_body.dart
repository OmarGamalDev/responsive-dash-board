import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/Layout/dashboard_desktop_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
