import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 251,
        child: Image.asset(
          'assets/images.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
