import 'package:e_commerce_app/features/authentication/screens/navigation_menu/navigation_menu.dart';
import 'package:e_commerce_app/features/authentication/screens/signup%20_screen/signup.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: SingleChildScrollView(
            //spacing around the screen
            child: Padding(
              padding: const EdgeInsets.all(MySizes.defaultspace),
              child: Column(
                children: [
                  //Logo,Title,subtitle
                  const Column(
                    children: [
                      //Logo

                      // Title
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome back,',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),

                      //Subtitle
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Discover limitless choices and Unmatched Convenience'))
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),

                  // Form
                  Form(
                    child: Column(
                      children: [
                        // Email
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.direct_right),
                              labelText: 'Email'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //  Password
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.password_check),
                              labelText: 'Password',
                              suffixIcon: Icon(Iconsax.eye_slash)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            // Remember me
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text('Remeber me'),
                            const SizedBox(
                              width: 80,
                            ),
                            // Forget password
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                    iconAlignment: IconAlignment.end,
                                    onPressed: () {},
                                    child: const Text('Forget Password?')),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Login button
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.offAll(const HomeNavigation()),
                              child: const Text(
                                'Sign in',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        // Create Account button
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {
                                Get.to(const SignupScreen());
                              },
                              child: const Text(
                                'Create Account',
                                style: TextStyle(),
                              )),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // divider
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child:
                              Divider(thickness: 1, indent: 60, endIndent: 5)),
                      Text('or sign in with'),
                      Flexible(
                          child:
                              Divider(thickness: 1, indent: 5, endIndent: 60)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // footer icons
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
                              image:
                                  AssetImage('assets/logos/facebook-icon.png'),
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
        ),
      ), //used this so that screen will be scrollable for small screen
    );
  }
}
