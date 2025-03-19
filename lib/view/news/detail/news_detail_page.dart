import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/news/detail/news_detail_view.dart';
import 'package:purasiwa/view/news/detail/news_detail_viewmodel.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(
        viewModel: NewsDetailViewmodel(context), child: NewsDetailView());
  }
}
