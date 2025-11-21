import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/All_Expenses/all_expenses_item_child.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              child: AllExpensesItemChild(
                itemModel: AllExpensesItemModel(
                  color: Color(0xff4EB7F2),
                  image: Assets.imagesBalance,
                  title: 'Balance',
                  data: 'April 2022',
                  price: r'$20,129',
                ),
                titleStyle: AppStyles.styleSemiBold16.copyWith(
                  color: Colors.white,
                ),
                dataStyle: AppStyles.styleRegular14.copyWith(
                  color: Color(0xFFFAFAFA),
                ),
                priceStyle: AppStyles.styleSemiBold24.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: AllExpensesItemChild(
                itemModel: AllExpensesItemModel(
                  color: Colors.white,
                  image: Assets.imagesIncome,
                  title: 'Income',
                  data: 'April 2022',
                  price: r'$20,129',
                ),
                titleStyle: AppStyles.styleSemiBold16,
                dataStyle: AppStyles.styleRegular14,
                priceStyle: AppStyles.styleSemiBold24,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: AllExpensesItemChild(
                itemModel: AllExpensesItemModel(
                  color: Colors.white,
                  image: Assets.imagesExpenses,
                  title: 'Expenses',
                  data: 'April 2022',
                  price: r'$20,129',
                ),
                titleStyle: AppStyles.styleSemiBold16,
                dataStyle: AppStyles.styleRegular14,
                priceStyle: AppStyles.styleSemiBold24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
