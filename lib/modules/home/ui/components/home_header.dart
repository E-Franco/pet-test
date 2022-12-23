import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_test/common/constants/constants.dart';
import 'package:pet_test/common/domain/helpers/ui_utils.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 20,
        bottom: 30,
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: widthPercentage(context, 10),
              backgroundColor: Colors.grey,
              backgroundImage: const AssetImage(AppImages.avatar1),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Olá, ',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      letterSpacing: 0.3,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Afonso',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Anestesista',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  iconSize: widthPercentage(context, 10),
                  color: Colors.white.withOpacity(0.8),
                  icon: const Icon(Icons.notifications_outlined),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
