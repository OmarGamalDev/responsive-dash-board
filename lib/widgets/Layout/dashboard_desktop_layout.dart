import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: const CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(child: AllExpenses()),
              SizedBox(height: 24),
              Expanded(flex: 2, child: QuickInvoice()),
            ],
          ),
        ),
        SizedBox(width: 24),
        Expanded(flex: 3, child: Container(color: Colors.blue)),
      ],
    );
  }
}
