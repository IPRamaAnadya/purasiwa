import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:purasiwa/shared/widget/my_viewmodel.dart';

class ShrineViewModel extends MyViewmodel {
  ShrineViewModel(super.context) {
    fetchShrines();
  }

  final List<String> _shrines = [];
  bool _isLoading = false;
  int _page = 1;

  List<String> get shrines => _shrines;
  bool get isLoading => _isLoading;

  void fetchShrines() async {
    if (_isLoading) return;

    _isLoading = true;
    notifyListeners();

    // Simulate network request
    await Future.delayed(Duration(seconds: 2));
    List<String> newShrines =
        List.generate(10, (index) => 'Shrine ${_page * 10 + index + 1}');
    _shrines.addAll(newShrines);
    _page++;

    _isLoading = false;
    notifyListeners();
  }

  void goDetail(BuildContext context, String id) {
    context.push('/shrine/$id');
  }
}
