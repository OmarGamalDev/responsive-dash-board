import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 14, bottom: 14),
            child: Text("Monthly", style: AppStyles.styleMedium16),
          ),
          SizedBox(width: 18),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12),
            child: Icon(Icons.keyboard_arrow_down_rounded),
          ),
        ],
      ),
    );
  }
}
