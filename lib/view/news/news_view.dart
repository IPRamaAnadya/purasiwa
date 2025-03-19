import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_image.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';
import 'package:purasiwa/view/news/news_viewmodel.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final read = context.read<NewsViewmodel>();
    return MyScaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => read.onItemTapped(context, index),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyImage.network(
                        'https://plus.unsplash.com/premium_photo-1661425505025-238c888750f7?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'News Title',
                            style: AppTextStyles.titleBlack,
                          ),
                          Text(
                            'News Description',
                            style: AppTextStyles.body,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
