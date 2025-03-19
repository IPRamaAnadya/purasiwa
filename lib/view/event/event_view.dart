import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';
import 'package:purasiwa/shared/widget/my_image.dart';
import 'package:purasiwa/shared/widget/my_loading.dart';
import 'package:purasiwa/shared/widget/my_scaffold.dart';
import 'package:purasiwa/view/event/event_viewmodel.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<EventViewmodel>();
    final read = context.read<EventViewmodel>();

    return MyScaffold(
      appBar: AppBar(
        title: Text('Event List'),
      ),
      body: watch.isLoading
          ? Center(child: MyLoading())
          : ListView.builder(
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.all(16.0),
              itemCount: watch.events.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    read.goDetail(context, index.toString());
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: MyImage.network(
                              'https://plus.unsplash.com/premium_photo-1689838027383-9dee197e38a3?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.base100,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              '10\nJun',
                              style:
                                  AppTextStyles.bodyBold.copyWith(fontSize: 10),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.black.withAlpha(100),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    watch.events[index],
                                    style: AppTextStyles.subtitleBold
                                        .copyWith(color: Colors.white),
                                  ),
                                  Text(
                                    'Event Subtitle',
                                    style: AppTextStyles.caption
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
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
