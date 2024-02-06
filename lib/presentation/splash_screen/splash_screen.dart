import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:enexpet/presentation/bottom_navigation/bottom_nav.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 6,
        splash: Image.asset('assets/images/logo.png'),
        nextScreen: BottomNav(),
        splashTransition: SplashTransition.fadeTransition);
  }
}
