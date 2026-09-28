import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/onboardingpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Onboardingpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Assets.img.splash.decoration.svg(fit: BoxFit.cover),
            ),
            Center(child: Assets.img.splash.logo.svg()),
          ],
        ),
      ),
    );
  }
}
