import 'dart:ui';

import 'package:flutter/material.dart';

class PngProduct extends StatelessWidget {
  final String imageSrc;
  PngProduct({@required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Image.asset(
            imageSrc,
            color: Colors.black54,
          ),
        ),
        Image.asset(
          imageSrc,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
