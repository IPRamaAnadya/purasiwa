import 'package:flutter/material.dart';
import 'package:purasiwa/i18n/en/strings.g.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_button.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';

class TutorialView extends StatelessWidget {
  const TutorialView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text(t.tutorial.appBar.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 24,
          children: [
            _buildHeader(context),
            _buildDescription(context),
            _buildRequiredOfferings(context),
            _buildFlows(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
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
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Text(t.tutorial.description.first),
        ],
      ),
    );
  }

  Widget _buildRequiredOfferings(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.tutorial.offerings.title,
                style: AppTextStyles.titleBlack,
              ),
              Text(t.tutorial.offerings.description),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 100,
          width: double.infinity,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                final item = t.tutorial.offerings.items[i];
                return Container(
                  width: 200,
                  height: 100,
                  child: Row(
                    spacing: 8,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 80,
                          color: Colors.grey,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.network(
                                  'https://assets.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/181/2023/10/09/Screenshot_20231009_182914_Instagram-1868371701.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: AppTextStyles.bodyBlack,
                            ),
                            Text(
                              item.qty,
                              style: AppTextStyles.caption,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return SizedBox(width: 8);
              },
              itemCount: t.tutorial.offerings.items.length),
        ),
        SizedBox(height: 16),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(t.tutorial.offerings.closeDescription),
              Container(
                width: double.infinity,
                child: Button(
                  onPressed: () {},
                  child: Text(t.tutorial.offerings.button),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildFlows(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.tutorial.flow.title,
                style: AppTextStyles.titleBlack,
              ),
              Text(t.tutorial.flow.description),
            ],
          ),
        ),
        SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          padding: EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (context, i) {
            final flow = t.tutorial.flow.items[i];
            return Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${flow.no}. ${flow.title}',
                    style: AppTextStyles.bodyBlack,
                  ),
                  SizedBox(height: 8),
                  Text(
                    flow.description,
                    style: AppTextStyles.caption,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, i) {
            return SizedBox(height: 16);
          },
          itemCount: t.tutorial.flow.items.length,
        )
      ],
    );
  }
}
