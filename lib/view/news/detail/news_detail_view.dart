import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      
    );
  }
}