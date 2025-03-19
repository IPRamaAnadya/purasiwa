import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/home/home_view.dart';
import 'package:purasiwa/view/home/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(
      viewModel: HomeViewModel(context),
      child: HomeView(),
    );
  }
}
