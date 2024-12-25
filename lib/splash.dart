import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pro1/Registration/signup.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    Duration duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>  const SignUp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedSplashScreen(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          duration: 100000,
          splash: Lottie.asset(
            'media/images/splash7.json',
            width: double.infinity,
          ),
          splashIconSize: double.infinity,
          nextScreen: const SignUp(),
        ),
      ),
    );
  }
}
