import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/shrine/detail/shrine_detail_view.dart';
import 'package:purasiwa/view/shrine/detail/shrine_detail_viewmodel.dart';

class ShrineDetailPage extends StatelessWidget {
  const ShrineDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(
        viewModel: ShrineDetailViewmodel(context), child: ShrineDetailView());
  }
}
