import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPage<T extends ChangeNotifier> extends StatelessWidget {
  final T viewModel;
  final Widget child;

  const MyPage({super.key, required this.viewModel, required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => viewModel,
      child: child,
    );
  }
}