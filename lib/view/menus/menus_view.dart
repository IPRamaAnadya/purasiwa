import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';

class MenusView extends StatelessWidget {
  const MenusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pura Siwa'),
            Text('ᬧᬸᬭᬰᬶᬯ', style: AppTextStyles.caption.copyWith(fontSize: 10)),
          ],
        )),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(LucideIcons.x),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [_buildMenus(context)],
      ),
    );
  }

  Widget _buildMenus(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Column(
          children: [
            _buildSectionTitle('Menu'),
            _buildMenu(context, 'Home', '/'),
            _buildMenu(context, 'History', '/history'),
            _buildMenu(context, 'Offerings and Flow', '/tutorial'),
            _buildMenu(context, 'Explore', '/shrine'),
            _buildMenu(context, 'Events', '/events'),
            _buildMenu(context, 'News', '/news'),
          ],
        ),
        Column(
          children: [
            _buildSectionTitle('need help?'),
            _buildMenu(context, 'Contact Us', '/language'),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(LucideIcons.twitter),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(LucideIcons.instagram),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(LucideIcons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(LucideIcons.youtube),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildMenu(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyles.body,
      ),
      onTap: () {
        context.push(route);
      },
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      child: Row(
        spacing: 12,
        children: [
          Container(
            width: 50,
            height: 0.2,
            color: AppColors.primary,
          ),
          Text(
            title,
            style: AppTextStyles.caption,
          ),
        ],
      ),
    );
  }
}
