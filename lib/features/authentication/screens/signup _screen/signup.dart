import 'package:e_commerce_app/features/authentication/screens/email_verification_screens/emailverifyscreen.dart';
import 'package:e_commerce_app/features/authentication/screens/signup%20_screen/signupform.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperfunctions.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(),
      //Singlechildscrollableview used so that it can be scrollable on small screen devices
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // create account title
              Text(
                'Lets create your account',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 30,
              ),

              // Form
              const SignUpForm(),
              const SizedBox(height: 20),

              // Check box and terms and conditions
              Row(
                children: [
                  // Checkbox
                  Checkbox(value: true, onChanged: (value) {}),
                  // terms and conditions
                  const SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: 'I agree to '),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                color: dark ? Colors.white : Colors.blue,
                                decorationColor:
                                    dark ? Colors.white : Colors.blue,
                                decoration: TextDecoration.underline)),
                        const TextSpan(text: ' and '),
                        TextSpan(
                            text: 'Terms of use',
                            style: TextStyle(
                                color: dark ? Colors.white : Colors.blue,
                                decorationColor:
                                    dark ? Colors.white : Colors.blue,
                                decoration: TextDecoration.underline))
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(const Emailverifyscreen()),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(thickness: 1, indent: 60, endIndent: 5)),
                  Text('or sign in with'),
                  Flexible(
                      child: Divider(thickness: 1, indent: 5, endIndent: 60)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // fotter Social Logins
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage('assets/logos/facebook-icon.png'),
                          height: 50,
                          width: 50,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage('assets/logos/google-icon.png'),
                          height: 50,
                          width: 50,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
