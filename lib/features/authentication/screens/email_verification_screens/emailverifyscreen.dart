import 'package:e_commerce_app/features/authentication/screens/login_screen/login.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/onboarding_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Emailverifyscreen extends StatelessWidget {
  const Emailverifyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultspace),
        child: Column(
          children: [
            const OnboardingPage(
                image: MyImages.onboardingimage1,
                title: 'Verify your email address',
                subtitle: 'youremail@google.com'),
            const Text(
              'We have sent you a confirmation email please check your inbox.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            // Continue button
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Continue')))
          ],
        ),
      ),
    );
  }
}
