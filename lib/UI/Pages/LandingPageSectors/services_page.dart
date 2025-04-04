import 'package:flutter/material.dart';
import 'package:portfolio/UI/Widgets/service_item.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';
import 'package:portfolio/Utils/Enum/services.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 2,
                  endIndent: 25,
                  color: AppColors.darkBlueGray,
                ),
              ),
              Text("Services", style: bigBlueStyle),
              const Expanded(
                child: Divider(
                  thickness: 2,
                  indent: 25,
                  color: AppColors.darkBlueGray,
                ),
              ),
            ],
          ),
        ),

        Center(
          child: Text(
            "Creating intuitive and user-friendly software through variety of programming techs",
            style: mainDarkBlueStyle,
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount;
            if (constraints.maxWidth >= 1200) {
              crossAxisCount = 6;
            } else if (constraints.maxWidth >= 900) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth >= 600) {
              crossAxisCount = 3;
            } else if (constraints.maxWidth >= 400) {
              crossAxisCount = 2;
            } else {
              crossAxisCount = 1;
            }

            return Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 25,
                  childAspectRatio: 1,
                ),
                padding: const EdgeInsets.all(16),
                itemCount: servicesJson.length,
                itemBuilder: (context, index) {
                  var serviceData = servicesJson[index];

                  return ServiceItem(
                    img: 'assets/ic/about.png',
                    title: serviceData['title']!,
                    description: serviceData['description']!,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
