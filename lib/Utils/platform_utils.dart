import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformUtils {
  static bool isWeb() => kIsWeb;

  static bool isWebOnMobile(BuildContext context) {
    return kIsWeb && MediaQuery.of(context).size.width < 600;
  }

  static bool isWebOnDesktop(BuildContext context) {
    print("trueeeeeeeeeeeeeeee");
    return kIsWeb && MediaQuery.of(context).size.width >= 600;
  }
}
