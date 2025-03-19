import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/menus/menus_view.dart';
import 'package:purasiwa/view/menus/menus_viewmodel.dart';

class MenusPage extends StatelessWidget {
  const MenusPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: MenusViewmodel(context), child: MenusView());
  }
}
