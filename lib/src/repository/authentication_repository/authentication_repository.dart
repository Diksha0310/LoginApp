import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:loginapp/src/features/core/screens/dashboard/dashboard.dart';
import 'package:loginapp/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //variable
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const WelcomeScreen()) : Get.offAll(() => const Dashboard());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        codeSent: (verificationId, resendToken){
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationId.value = verificationId;
        },
        verificationFailed: (e){
          if(e.code == 'invalid-phone-number'){
            Get.snackbar('Error', 'The provided phone number is not valid');
          }
          else{
            Get.snackbar('Error', 'Something went wrong try again');
          }
        },
    );
  }

  Future<bool> verifyOTP(String otp) async{
    var credentials = await _auth
        .signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }


  Future<void> createUSerWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const Dashboard()) : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH Exception - ${ex.message}');
      throw ex;
    } catch (_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUSerWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){

    } catch (_){

    }
  }

  Future<void> logout() async => await _auth.signOut();
}