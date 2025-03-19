import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:purasiwa/shared/widget/my_viewmodel.dart';
import 'package:purasiwa/view/menus/menus_page.dart';

class HomeViewModel extends MyViewmodel {
  HomeViewModel(super.context);

  void onAppbarMenuTapped(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      builder: (BuildContext context) {
        return MenusPage();
      },
    );
  }
}
