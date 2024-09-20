import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: MyImages.onboardingimage1,
                title: MyText.onboardtitle1,
                subtitle: MyText.onboardsubtitle1,
              ),
              OnboardingPage(
                image: MyImages.onboardingimage2,
                title: MyText.onboardtitle2,
                subtitle: MyText.onboardsubtitle2,
              ),
              OnboardingPage(
                image: MyImages.onboardingimage3,
                title: MyText.onboardtitle3,
                subtitle: MyText.onboardsubtitle3,
              ),
            ],
          ),
          //Skip Button'
          const SkipButton(),
          //DOts Navigation smoothpageindiator
          const DotNavigation(),
          const ArrowButton(),

          // Circular Button
        ],
      ),
    );
  }
}

// CUSTOM WIDGETS

// Onboarding Page
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.image, required this.title, required this.subtitle});
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //wrapped this colum widget with padding
      padding: const EdgeInsets.all(MySizes.defaultspace),
      child: Column(
        //wrapped this colum widget with padding
        children: [
          Image(
            height: MyHelperfunctions.screenHeight() * 0.6,
            width: MyHelperfunctions.screenWidth() * 0.8,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: MySizes.spacebtwitems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

// Skip Button
class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyDevice.getAppbarHeight(),
        right: MySizes.defaultspace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}

// Dot Navigation
class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    final dark = MyHelperfunctions.isDarkmode(context);
    return Positioned(
      bottom: MyDevice.getBottomnavigationBarHeight(),
      left: MySizes.defaultspace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
        controller: controller.pagecontroller,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}

// Arrow Button
class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperfunctions.isDarkmode(context);
    return Positioned(
      bottom: MyDevice.getBottomnavigationBarHeight(),
      right: MySizes.defaultspace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? Colors.purple : Colors.black),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
