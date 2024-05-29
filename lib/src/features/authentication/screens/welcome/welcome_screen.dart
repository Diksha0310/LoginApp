import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/screens/login/login_screen.dart';
import 'package:loginapp/src/features/authentication/screens/signup/signup_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode? dSecondaryColor:dPrimaryColor,
      body: Stack(
        children: [
          DFadeInAnimation(
            durationInMs: 1200,
            animate: DAnimatePosition(bottomAfter: 0,
                bottomBefore: -100,
            leftBefore: 0,
            leftAfter: 0,
            topAfter: 0,
            topBefore: 0,
            rightAfter: 0,
            rightBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(dDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: const AssetImage(dWelcomeScreenImage), height: height*0.6,),
                  Column(children:[
                    Text(dWelcomeTitle, style: Theme.of(context).textTheme.headlineSmall,),
                    Text(dWelcomeSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
                  ]),
                  Row(
                    children: [
                      Expanded(child: OutlinedButton(onPressed: () => Get.to(() => const LoginScreen()),

                          child: Text(dLogin.toUpperCase()))),
                      const SizedBox(width: 10.0,),
                      Expanded(child: ElevatedButton(onPressed: () => Get.to(() => const SignUpScreen()),

                          child: Text(dSignUp.toUpperCase())), ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )

    );
  }
}
