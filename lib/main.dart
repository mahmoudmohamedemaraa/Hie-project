import 'package:flutter/material.dart';
import 'package:smartwatch_project/rigesterpage.dart';
import 'package:smartwatch_project/splash.dart';
// import 'package:http/http.dart' as http ;
import 'package:firebase_core/firebase_core.dart';
import 'package:smartwatch_project/welcom_screen.dart';
import 'home.dart';
import 'login.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const SmartWatchApp());
}

class SmartWatchApp extends StatelessWidget {
  const SmartWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Watch App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}