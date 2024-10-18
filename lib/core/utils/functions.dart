import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_colors.dart';
import 'app_util.dart';
import 'blocObserver.dart';

abstract class Functions {
  static void initializeApp() {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();
    // AppUtil.hideStatusBarPermanently();
    AppUtil.changeStatusBarTheme(
      color: AppColors.green,
      brightness: Brightness.light,
    );
  }
}
