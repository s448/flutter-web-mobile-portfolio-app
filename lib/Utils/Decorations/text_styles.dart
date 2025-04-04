import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';

TextStyle footerStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: AppColors.mediumBlue,
);

TextStyle selectedFooterStyle = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.w800,
  color: AppColors.darkBlueGray,
);

TextStyle mainWhiteStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

TextStyle mainBlueStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: AppColors.mediumBlue,
);

TextStyle mainDarkBlueStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: AppColors.darkBlueGray,
);

TextStyle bigBlueStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w800,
  color: AppColors.mediumBlue,
);

TextStyle gradientExtraBigStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  foreground:
      Paint()
        ..shader = LinearGradient(
          colors: <Color>[AppColors.mediumBlue, AppColors.darkBlueGray],
        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
);
