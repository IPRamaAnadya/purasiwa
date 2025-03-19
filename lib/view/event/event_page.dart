import 'package:flutter/material.dart';
import 'package:purasiwa/shared/widget/my_page.dart';
import 'package:purasiwa/view/event/event_view.dart';
import 'package:purasiwa/view/event/event_viewmodel.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyPage(viewModel: EventViewmodel(context), child: EventListView());
  }
}