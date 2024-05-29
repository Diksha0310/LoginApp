import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:loginapp/src/features/core/screens/dashboard/dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: dFormHeight -10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: dEmail,
                  hintText: dEmail,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: dFormHeight -20,),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    labelText: dPassword,
                    hintText: dPassword,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.remove_red_eye_sharp),)
                ),
              ),
              const SizedBox(height: dFormHeight -20,),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(dForgetPassword)),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.to(() => const Dashboard());
                  }, child: Text(dLogin.toUpperCase())))
            ],
          ),
        ));
  }


}

