import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/common_widgets/form/form_header_widget.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(dDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: dDefaultSize*4,),
                const FormHeaderWidget(
                  image: dForgetPasswordImage,
                  title: dForgetPassword,
                  subTitle: dFPSubTitle,
                  imageColor: null,
                  heightBetween: 30.0,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: dFormHeight,),
                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(dPhoneNo),
                        hintText: dPhoneNo,
                        prefixIcon: Icon(Icons.numbers),
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.to(() => const OTPScreen());
                          },
                          child: const Text("Next")),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
