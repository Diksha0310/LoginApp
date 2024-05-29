import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(dDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dFPTitle, style: Theme.of(context).textTheme.headlineMedium,),
            Text(dFPSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 30.0,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: dEmail,
              subTitle: dResetViaEmail,
              onTap: (){
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());},
            ),
            const SizedBox(height: 20.0,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: dPhoneNo,
              subTitle: dResetViaPhone,
              onTap: (){
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordPhoneScreen());
              },
            ),
          ],
        ),
      ),);
  }
}