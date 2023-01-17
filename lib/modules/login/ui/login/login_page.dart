import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_test/modules/login/ui/login/components/input_field.dart';
import 'package:pet_test/modules/login/ui/login/components/primary_button.dart';
import 'package:pet_test/modules/login/ui/login/components/social_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://picsum.photos/800/1200',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black54,
              ),
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width - 40,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  InputField(),
                  SocialButton(icon: icon, text: text, onTap: onTap),
                  PrimaryButton(text: text, onTap: onTap),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
