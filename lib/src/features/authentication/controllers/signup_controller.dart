import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/features/authentication/models/user_model.dart';
import 'package:loginapp/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:loginapp/src/repository/authentication_repository/authentication_repository.dart';
import 'package:loginapp/src/repository/user_repository/user_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());


  void registerUser(String email, String password){
    String? error = AuthenticationRepository.instance.createUSerWithEmailAndPassword(email, password) as String?;
    if(error != null)
      {
        Get.showSnackbar(GetSnackBar(message: error.toString(),));
      }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }


}