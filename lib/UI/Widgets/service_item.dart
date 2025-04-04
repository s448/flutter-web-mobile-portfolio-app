import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.img,
    required this.title,
    required this.description,
  });
  final String img;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.6,
      padding: EdgeInsets.all(8),
      // width: MediaQuery.of(context).size.width * 0.2,
      // height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(fit: BoxFit.cover, img, width: double.infinity),
          AutoSizeText(
            title,
            style: TextStyle(
              color: AppColors.mediumBlue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
            minFontSize: 14,
          ),
          AutoSizeText(
            description,
            style: TextStyle(
              color: AppColors.darkBlueGray,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 5,
            minFontSize: 10,
          ),
        ],
      ),
    );
  }
}
