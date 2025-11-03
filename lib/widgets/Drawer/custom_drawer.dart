import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/Drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Column(
        children: const [
          UserInfoListTile(
            image: Assets.imagesAvatar1,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
