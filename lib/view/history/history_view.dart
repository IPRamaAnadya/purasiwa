import 'package:flutter/material.dart';
import 'package:purasiwa/i18n/en/strings.g.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(title: Text(t.history.appBar.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1614836978715-21d79e427450?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // title
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                t.history.title,
                style: AppTextStyles.titleBlack,
              ),
            ),
            // content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                spacing: 16,
                children: t.history.description.map((e) {
                  return Text(
                    e,
                    style: AppTextStyles.body
                        .copyWith(color: AppColors.neutralContent),
                    textAlign: TextAlign.justify,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
