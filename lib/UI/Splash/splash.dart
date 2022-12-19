import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce_2/UI/REGISTERATION/ask.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static final route='/';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Ask()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedSplashScreen(
            duration: 4000,
            splash: Container(
                width: double.infinity,
                height: 500,
                child: Image.asset("image/shopping.jpg",fit: BoxFit.cover,)),
            nextScreen: Ask(),
            splashTransition: SplashTransition.fadeTransition,
            splashIconSize: 99,
            backgroundColor: Colors.white,
          ),
      ),

    );
  }
}
