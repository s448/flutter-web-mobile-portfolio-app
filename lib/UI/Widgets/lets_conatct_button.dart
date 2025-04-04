import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';

class LetsContactButton extends StatelessWidget {
  const LetsContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [
              AppColors.mediumBlue,
              AppColors.darkBlueGray,
            ], // Gradient colors
            begin: Alignment.topLeft, // Start position
            end: Alignment.bottomRight, // End position
          ),
        ),
        child: Text("Let's Contact", style: mainWhiteStyle),
      ),
    );
  }
}
