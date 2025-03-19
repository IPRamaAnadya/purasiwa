import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../styles/colors.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({super.key, this.colors, this.size});

  final List<Color>? colors;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 30,
      height: size ?? 30,
      child: Center(
        child: LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          colors: colors ?? [
            AppColors.primary
          ],
        ),
      ),
    );
  }
}
