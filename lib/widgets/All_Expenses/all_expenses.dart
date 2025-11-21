import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/All_Expenses/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/All_Expenses/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AllExpensesHeader(),
              SizedBox(height: 16),
              AllExpensesItem(),
            ],
          ),
        ),
      ),
    );
  }
}
