import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:purasiwa/shared/widget/my_viewmodel.dart';


class EventViewmodel extends MyViewmodel {
  EventViewmodel(super.context) {
    fetchEvents();
  }

  final List<String> _events = [];
  bool _isLoading = false;
  int _page = 1;

  List<String> get events => _events;
  bool get isLoading => _isLoading;

  void fetchEvents() async {
    if (_isLoading) return;

    _isLoading = true;
    notifyListeners();

    // Simulate network request
    await Future.delayed(Duration(seconds: 2));
    List<String> newEvents = List.generate(10, (index) => 'Event ${_page * 10 + index + 1}');
    _events.addAll(newEvents);
    _page++;

    _isLoading = false;
    notifyListeners();
  }

  void goDetail(BuildContext context, String id) {
    context.push('/events/$id');
  }
}
