
import 'package:get/get.dart';
import 'package:loginapp/src/features/authentication/models/user_model.dart';
import 'package:loginapp/src/repository/authentication_repository/authentication_repository.dart';
import 'package:loginapp/src/repository/user_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();



  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());
  // step3 Get user Email and pass to user Repository to fetch user records.

 Future<UserModel> getUserData() async{
   final email = _authRepo.firebaseUser.value?.email;
   if(email != null)
   {
     return _userRepo.getUSerDetails(email);
   }
   else
   {
     Get.snackbar("Error", "Login to continue");
     return Future.error('User not logged in');
   }
 }
  Future<List<UserModel>> getAllUsers() async {
    return await _userRepo.allUsers();
  }
  updateRecord(UserModel user) async{
   await _userRepo.updateUserRecord(user);
  }
}