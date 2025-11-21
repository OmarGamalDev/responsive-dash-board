import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItemChild extends StatelessWidget {
  const AllExpensesItemChild({super.key, required this.itemModel,required this.titleStyle,required this.dataStyle,required this.priceStyle});
  final AllExpensesItemModel itemModel;
  final TextStyle titleStyle,dataStyle,priceStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: itemModel.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.only(right: 25),
                  decoration: ShapeDecoration(
                    color: Colors.transparent,
                    shape: OvalBorder(),
                  ),
                  child: Center(child: SvgPicture.asset(itemModel.image)),
                ),
                Expanded(child: SizedBox(width: 56)),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 34),
            Text(
              itemModel.title,
              style: titleStyle,
            ),
            SizedBox(height: 8),
            Text(
              itemModel.data,
              style: dataStyle,
            ),
            SizedBox(height: 16),
            Text(
              itemModel.price,
              style: priceStyle,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
