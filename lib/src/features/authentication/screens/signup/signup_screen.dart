import 'package:flutter/material.dart';
import 'package:loginapp/src/common_widgets/form/form_header_widget.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(dDefaultSize),
            child:   Column(
              children: [
                const FormHeaderWidget(
                    image: dWelcomeScreenImage,
                    title: dSignUpTitle,
                    subTitle: dSignUpSubTitle,
                    imageColor: null,
                   heightBetween: dFormHeight,),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){},
                      icon: const Image(image: AssetImage(dGoogleLogoImage), width: 30.0,),
                      label: Text(dSignInWithGoogle.toUpperCase()),),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: dAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyLarge),
                                TextSpan(text: dLogin.toUpperCase())
                              ]
                            )))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


