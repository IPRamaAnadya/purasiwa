import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/news/news_view.dart';
import 'package:purasiwa/view/news/news_viewmodel.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: NewsViewmodel(context), child: NewsView());
  }
}
