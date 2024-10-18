import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/features/login/manager/cubit/login_cubit.dart';
import 'package:projct/features/login/view/login_view.dart';
import 'package:projct/features/onboarding/view/onboarding_view.dart';
import 'package:projct/features/register/manager/cubit/register_cubit.dart';
import 'package:projct/features/splash/view/splash_view.dart';

void main() {
  runApp(const EBookApp());
}

class EBookApp extends StatelessWidget {
  const EBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) {
              return LoginCubit();
            },
          ),
          BlocProvider(
            create: (BuildContext context) {
              return RegisterCubit();
            },
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'whatsapp',
          home: SplashView(),
        ),
      ),
    );
  }
}
