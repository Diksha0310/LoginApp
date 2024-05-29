import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/controllers/signup_controller.dart';
import 'package:loginapp/src/features/authentication/models/user_model.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: dFormHeight-10),
      child: Form(
        key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                    label: Text(dFullName),
                    prefixIcon: Icon(Icons.person_outline_outlined),),
              ),
              const SizedBox(height: dFormHeight-20,),

              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                    label: Text(dEmail),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(height: dFormHeight-20,),

              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                    label: Text(dPhoneNo),
                    prefixIcon: Icon(Icons.numbers)),
              ),
              const SizedBox(height: dFormHeight-20,),

              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                    label: Text(dPassword),
                    prefixIcon: Icon(Icons.fingerprint)),
              ),
              const SizedBox(height: dFormHeight-10,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate())
                      {
                        SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                       SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                        final user =UserModel(
                            email: controller.email.text.trim(),
                            password: controller.password.text.trim(),
                            fullName: controller.fullName.text.trim(),
                            phoneNo: controller.phoneNo.text.trim(),
                        );
                        SignUpController.instance.createUser(user);
                      }
                    },
                    child: Text(dSignUp.toUpperCase())),
              )
            ],
          )),
    );
  }
}