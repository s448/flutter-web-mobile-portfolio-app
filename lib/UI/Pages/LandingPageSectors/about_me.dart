import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';
import 'package:portfolio/Utils/platform_utils.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PlatformUtils.isWebOnDesktop(context)
            ? CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.16,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/ic/no-bg-logo.png'),
            )
            : SizedBox.shrink(),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About Me", style: bigBlueStyle),

                AutoSizeText(
                  "I'm a passionate Software developer with a strong background in both mobile and web development. "
                  "With several years of experience building responsive, high-quality apps, "
                  "I specialize in creating seamless user experiences across platforms. "
                  "I also provide services in bug fixing and performance optimization. "
                  "Whether it's building from scratch or improving existing projects, "
                  "I love turning ideas into functional and visually appealing applications.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 20,
                  minFontSize: 10,
                  maxFontSize: 17,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
