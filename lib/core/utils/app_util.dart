import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppUtil {
  static double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = scaleFactor * fontSize;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 100;
    }
  }

  static void dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static double responsiveHeight(context) => MediaQuery.sizeOf(context).height;

  static double responsiveWidth(context) => MediaQuery.sizeOf(context).width;

  static Orientation orientation(context) => MediaQuery.of(context).orientation;

  static mainNavigator(context, screen) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => screen));

  static removeUntilNavigator(context, screen) =>
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => screen), (route) => false);

  static replacementNavigator(context, screen) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));

  static dialog2(context, title, List<Widget> dialogBody,
      {barrierDismissible = true}) async {
    return await showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return AlertDialog(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            title: Center(
              child: Text(
                title,
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: dialogBody,
              ),
            ),
          );
        });
  }

  static bottomSheet({
    required context,
    required Widget view,
  }) async {
    Scaffold.of(context).showBottomSheet(
      enableDrag: false,
      (context) {
        return view;
      },
    );
  }

  static void hideStatusBarPermanently() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  static void hideBothStatusBarAndNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  static void hideStatusBarOnly() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
  }

  static void restoreStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
  }

  static void changeStatusBarTheme({
    Color color = Colors.transparent,
    Brightness brightness = Brightness.light,
  }) {
    SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: brightness,
    );
  }
}
