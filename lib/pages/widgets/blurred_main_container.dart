import 'dart:ui';
import 'package:flutter/material.dart';

class BlurredMainContainer extends StatelessWidget {
  const BlurredMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
          height: 90,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.2),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                )
              ],
              borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromRGBO(255, 255, 255, 0.8),
                  width: 1,
                )
            ),
          ),
        ),
      ),
    );
  }
}
