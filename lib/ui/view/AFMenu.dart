import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'RegistrationScreen.dart';
import 'SendMoneyScreen.dart';
import 'WelcomeScreen.dart';


class AllFinancial extends StatelessWidget {
  const AllFinancial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All Financial',
      theme: ThemeData(
        primaryColor: const Color(0xFF0C2D57),
        secondaryHeaderColor: const Color(0xFFFF7E36),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF7F8C9A)),
          bodyMedium: TextStyle(fontSize: 14),
          labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF7E36),
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/send-money': (context) => const SendMoneyScreen(),
      },
    );
  }
}
