import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/home_page.dart';

class SplashScreenDelayPage extends StatefulWidget {
  const SplashScreenDelayPage({super.key});

  @override
  State<SplashScreenDelayPage> createState() => _SplashScreenDelayPageState();
}

class _SplashScreenDelayPageState extends State<SplashScreenDelayPage> {
  openHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (builder) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    openHome();
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.red,
              Colors.green,
              Colors.purple,
            ],
                stops: [
              0.3,
              0.6,
              0.9
            ])),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Testando tela de animações!',
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 70),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 50),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
    ));
  }
}
