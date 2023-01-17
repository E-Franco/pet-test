import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final String icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Image.network(icon),
      style: ElevatedButton.styleFrom(
        // Estilo
      ),
      label: Text(text),
      onPressed: onTap,
    );
  }
}
