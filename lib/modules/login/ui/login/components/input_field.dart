import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(.8),
        hintText: 'Email',
      ),
    );
  }
}
