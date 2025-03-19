import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/history/history_view.dart';
import 'package:purasiwa/view/history/history_viewmodel.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: HistoryViewmodel(context), child: HistoryView());
  }
}
