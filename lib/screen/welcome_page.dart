import 'package:flutter/material.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/language_button.dart';
import '../widgets/privacy_and_terms.dart';
import 'home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: const Color(0xFF25D366),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome to WhatsApp',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const PrivacyAndTerms(),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    text: 'AGREE AND CONTINUE',
                  ),
                  const SizedBox(height: 50),
                  const LanguageButton(),
                ],
              ))
        ],
      ),
    );
  }
}
