import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InActiveDrawerItems extends StatelessWidget {
  const InActiveDrawerItems({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.icon),
        title: Text(drawerItemModel.title, style: AppStyles.styleRegular16),
      ),
    );
  }
}

class ActiveDrawerItems extends StatelessWidget {
  const ActiveDrawerItems({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.icon),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerItemModel.title, style: AppStyles.styleBold16),
        ),
        trailing: ColoredBox(
          color: const Color(0xff4EB7F2),
          child: const SizedBox(width: 3.27, height: 30),
        ),
      ),
    );
  }
}
