import 'package:flutter/material.dart';
import 'package:purasiwa/shared/styles/button_styles.dart';
import 'package:purasiwa/shared/styles/colors.dart';
import 'package:purasiwa/shared/widget/my_loading.dart';

class Button extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final bool isExpanded;
  final ButtonStyle? style;
  final bool showLoading;
  const Button({super.key, required this.child, this.onPressed, this.isExpanded = true, this.style, this.showLoading = false});


  Widget _buttonBuild() => ElevatedButton(
      style: style ?? AppButtonStyle.primary,
      onPressed: onPressed,
      child: !showLoading ? child : Container(
          width: 16,
          height: 16,
          child: MyLoading(colors: [
            AppColors.neutral
          ],)
      )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buttonBuild(),
    );
  }
}