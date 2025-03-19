import 'package:flutter/material.dart';
import 'package:purasiwa/shared/styles/text_styles.dart';

import 'colors.dart';

class AppButtonStyle {
  static ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.accent,
    foregroundColor: AppColors.accentContent,
    disabledBackgroundColor: AppColors.neutral,
    disabledForegroundColor: AppColors.neutralContent,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: AppTextStyles.bodyBold,
  );

  static ButtonStyle secondary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondary,
    foregroundColor: AppColors.secondaryContent,
    disabledBackgroundColor: AppColors.neutral,
    disabledForegroundColor: AppColors.neutralContent,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 0,
    textStyle: AppTextStyles.bodyBold,
  );

  static ButtonStyle success = ElevatedButton.styleFrom(
    backgroundColor: AppColors.success,
    foregroundColor: AppColors.successContent,
    disabledBackgroundColor: AppColors.neutral,
    disabledForegroundColor: AppColors.neutralContent,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    textStyle: AppTextStyles.bodyBold,
  );

  static ButtonStyle danger = ElevatedButton.styleFrom(
    backgroundColor: AppColors.danger,
    foregroundColor: AppColors.dangerContent,
    disabledBackgroundColor: AppColors.neutral,
    disabledForegroundColor: AppColors.neutralContent,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: AppTextStyles.bodyBold,
  );

  static ButtonStyle warning = ElevatedButton.styleFrom(
    backgroundColor: AppColors.warning,
    foregroundColor: AppColors.warningContent,
    disabledBackgroundColor: AppColors.neutral,
    disabledForegroundColor: AppColors.neutralContent,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    textStyle: AppTextStyles.bodyBold,
  );

  static ButtonStyle link = ButtonStyle(
    elevation: WidgetStateProperty.all(0),
    backgroundColor: WidgetStateProperty.all(Colors.transparent),
    foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.hovered)) {
        return AppColors.neutral; // Darker color on hover
      }
      if (states.contains(WidgetState.disabled)) {
        return AppColors.neutralContent; // Darker color on hover
      }
      return AppColors.primary; // Default color
    }),
    padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 8, vertical: 0)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    textStyle: WidgetStateProperty.all(AppTextStyles.bodyBold),
  );

  static ButtonStyle outlined = OutlinedButton.styleFrom(
    foregroundColor: AppColors.primary, // Text and icon color
    side: BorderSide(
      color: AppColors.primary, // Border color
      width: 1, // Border width
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    textStyle: AppTextStyles.bodyBold,
  ).copyWith(
    // Adding hover state to change the border and text color
    overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.hovered)) {
        return AppColors.primaryContent; // Lighter background on hover
      }
      return Colors.transparent; // Default transparent background
    }),
  );
}
