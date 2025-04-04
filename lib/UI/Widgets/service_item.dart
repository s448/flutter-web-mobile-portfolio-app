import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';

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
      padding: EdgeInsets.all(8),
      // width: MediaQuery.of(context).size.width * 0.2,
      // height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGrayBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(fit: BoxFit.fill, img, width: 50, height: 50),
          Text(
            title,
            style: TextStyle(
              color: AppColors.mediumBlue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          Text(
            description,
            style: TextStyle(
              color: AppColors.darkBlueGray,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
