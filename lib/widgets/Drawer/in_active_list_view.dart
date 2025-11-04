import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/Drawer/custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', icon: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', icon: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', icon: Assets.imagesMyInvestment),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: CustomDrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
