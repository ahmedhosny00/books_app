import 'package:flutter/material.dart';
import 'package:projct/features/onboarding/view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/logoicon.png',
            height: 280,
          ),
        ),
        const SizedBox(height: 20),
        const Text("WhatsUp",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
        const SizedBox(height: 40),
        const Text("The best app for chatting",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 147, 243, 151))),
      ],
    ));
  }
}
