import 'package:flutter/material.dart';

import '../../../../app_widgets/app_text_style.dart';
import '../../../../constants/app_colors.dart';

class OneRow extends StatelessWidget {
  final String title;
  final String value;
  const OneRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.regular(),
              ),
              Text(
                value,
                style: AppTextStyle.regular(),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: AppColors.greyLight,
        ),
      ],
    );
  }
}
