import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/Drawer/active_and_inactive_items.dart';
import 'package:responsive_dashboard/widgets/Drawer/in_active_list_view.dart';
import 'package:responsive_dashboard/widgets/Drawer/user_info_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItems(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    icon: Assets.imagesSetting,
                  ),
                ),
                InActiveDrawerItems(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    icon: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
