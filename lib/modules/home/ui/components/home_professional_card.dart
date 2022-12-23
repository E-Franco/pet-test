import 'package:flutter/material.dart';
import 'package:pet_test/common/constants/constants.dart';
import 'package:pet_test/common/domain/helpers/helpers.dart';

class HomeProfessionalCard extends StatelessWidget {
  const HomeProfessionalCard({
    super.key,
    required this.name,
    required this.profession,
    required this.avatar,
    required this.city,
    required this.rating,
  });

  final String name;
  final String profession;
  final String avatar;
  final String city;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            CircleAvatar(
              radius: widthPercentage(context, 8),
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(avatar),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                  ),
                ),
                Text(
                  profession,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildRating(),
                    const SizedBox(width: 20),
                    Text(
                      'São Paulo - SP',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildRating() {
    List<Widget> children = [];

    for (int i = 0; i < rating.toInt(); i++) {
      children.add(const Icon(Icons.star, color: Colors.amber));
    }

    if (rating - rating.toInt() > 0) {
      children.add(const Icon(Icons.star_half, color: Colors.amber));
    }

    while (children.length < 5) {
      children.add(Icon(Icons.star, color: Colors.grey[300]));
    }

    return Row(
      children: children,
    );
  }
}
