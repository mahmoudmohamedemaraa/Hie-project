import 'package:flutter/material.dart';
// import 'dart:math';
// import 'dart:ui';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _rotationController;
  late final AnimationController _fadeController;

  @override
  void initState() {
    super.initState();

    // 🔄 أنيميشن دوران الصورة
    _rotationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 6))
          ..repeat();

    // ✨ أنيميشن ظهور اللوجو من النص
    _fadeController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..forward();

    // ⏱ الانتقال بعد 20 ثانية
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFF9F6),    
                Color(0xFFFCEEE4),  
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Container(
             
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // circle
                  RotationTransition(
                    turns: _rotationController,
                    child: Image.asset(
                      'assets/logoo.png', // 
                     
                    ),
                  ),
                      
                  //  Fade + Zoom
                  FadeTransition(
                    opacity: _fadeController,
                    child: ScaleTransition(
                      scale: Tween<double>(begin: 0.6, end: 1.0)
                          .animate(CurvedAnimation(
                        parent: _fadeController,
                        curve: Curves.easeOutBack,
                      )),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,top: 20),
                        child: Image.asset(
                          'assets/logo.png', //  لوجو المشروع
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
