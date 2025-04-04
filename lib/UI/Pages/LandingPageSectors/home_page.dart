import 'package:flutter/material.dart';
import 'package:portfolio/UI/Widgets/lets_conatct_button.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: MediaQuery.of(context).size.height * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hi , I'm", style: mainBlueStyle),
                Text("Said Mohamed", style: bigBlueStyle),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    fontWeight: FontWeight.bold,
                    foreground:
                        Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              AppColors.mediumBlue,
                              AppColors.darkBlueGray,
                            ],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                  ),
                ),
                Text(
                  "We develop Mobile & Web Applications",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                    color: AppColors.darkBlueGray,
                    fontWeight: FontWeight.w200,
                    wordSpacing: 8,
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LetsContactButton(),
                      const SizedBox(width: 25),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.darkBlueGray,
                              width: 2,
                            ),
                          ),
                          child: Text("Download CV", style: mainDarkBlueStyle),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrayBlue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("3 years", style: bigBlueStyle),
                            Text("Experience", style: mainDarkBlueStyle),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: AppColors.darkBlueGray),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("+ 25", style: bigBlueStyle),
                            Text("Projects done", style: mainDarkBlueStyle),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(color: AppColors.darkBlueGray),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("+ 12", style: bigBlueStyle),
                            Text("Happy clients", style: mainDarkBlueStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.16,
            backgroundColor: AppColors.mediumBlue,
            backgroundImage: AssetImage('assets/ic/no-bg-logo.png'),
          ),
        ],
      ),
    );
  }
}
