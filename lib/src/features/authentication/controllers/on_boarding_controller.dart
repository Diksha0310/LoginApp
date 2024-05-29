
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/models/on_boarding_model.dart';
import 'package:loginapp/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages =[
    OnBoardingPage(model: OnBoardingModel(
        image: dOBImage1,
        title: dOBTitle1,
        subTitle: dOBSubTitle1,
        counterText: dOBCounter1,
        bgColor: dOBPage1Color
    )),
    OnBoardingPage(model: OnBoardingModel(
        image: dOBImage2,
        title: dOBTitle2,
        subTitle: dOBSubTitle2,
        counterText: dOBCounter2,
        bgColor: dOBPage2Color
    )),
    OnBoardingPage(model: OnBoardingModel(
        image: dOBImage3,
        title: dOBTitle3,
        subTitle: dOBSubTitle3,
        counterText: dOBCounter3,
        bgColor: dOBPage3Color
    ))
  ];

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

}