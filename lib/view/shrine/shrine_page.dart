import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/shrine/shrine_view.dart';
import 'package:purasiwa/view/shrine/shrine_view_model.dart';

class ShrinePage extends StatelessWidget {
  const ShrinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: ShrineViewModel(context), child: ShrineView());
  }
}
