import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyViewmodel extends ChangeNotifier {
  MyViewmodel(BuildContext context) {
    detailID = GoRouter.of(context).state.pathParameters['id'] ?? '';
  }

  String detailID = '';
}
