import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/constants/constants.dart';

class HomeExpertiseCard extends StatelessWidget {
  const HomeExpertiseCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.asset,
  });

  final Color color;
  final String title;
  final String subtitle;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withOpacity(.2),
                  ),
                  padding: const EdgeInsets.all(20),
                  width: constraints.maxWidth / 2.5,
                  height: constraints.maxWidth / 2.5,
                  child: SvgPicture.asset(asset),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              subtitle,
              style: const TextStyle(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
