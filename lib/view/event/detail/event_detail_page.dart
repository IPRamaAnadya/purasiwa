import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/event/detail/event_detail_view.dart';
import 'package:purasiwa/view/event/detail/event_detail_viewmodel.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(
        viewModel: EventDetailViewmodel(context), child: EventDetailView());
  }
}
