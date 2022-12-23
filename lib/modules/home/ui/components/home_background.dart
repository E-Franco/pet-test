import 'package:flutter/material.dart';

import '../../../../common/constants/constants.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.primary,
                AppColors.secondary,
              ],
            ),
          ),
          height: 425,
        ),
        Container(color: Colors.white),
      ],
    );
  }
}
