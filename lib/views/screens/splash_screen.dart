import 'package:flutter/material.dart';
import 'package:qr_scaner/views/widgets/large_button.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/images/splash.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              const Text(
                'Go and enjoy our features for free and make your life easy with us.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ZoomTapAnimation(
                  onTap: () {}, child: const LargeButton(title: 'Let`s start')),
            ],
          ),
        ),
      ),
    );
  }
}
