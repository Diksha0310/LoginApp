import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          DFadeInAnimation(durationInMs: 1600,
              animate: DAnimatePosition(
                  topAfter: 0,topBefore: -30,
                  leftBefore: -30, leftAfter: 0,
              ),
              child: const Image(image: AssetImage(dSplashTopIcon),)
          ),
          DFadeInAnimation(
            durationInMs: 2000,
            animate: DAnimatePosition(topBefore: 80, topAfter: 80, leftAfter: dDefaultSize, leftBefore: -80),
            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dAppName, style: Theme
                            .of(context)
                            .textTheme
                            .headlineSmall,),
                        Text(dAppTagLine, style: Theme
                            .of(context)
                            .textTheme
                            .headlineMedium)
                      ],
                    ),
          ),

          DFadeInAnimation(
            durationInMs: 2400,
            animate: DAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: const Image(
                      image: AssetImage(dSplashImage),
                    ),
          ),
          DFadeInAnimation(
            durationInMs: 2400,
            animate: DAnimatePosition(bottomBefore: 0, bottomAfter: 60, rightBefore: dDefaultSize, rightAfter: dDefaultSize),
            child: Container(
                      width: dSplashContainerSize,
                      height: dSplashContainerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: dPrimaryColor,
                      ),
                    ),
          ),
      ],
    ),
    );
  }
}


