import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:loginapp/src/features/core/screens/profile/widget/profile_menu.dart';
import 'package:loginapp/src/repository/authentication_repository/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(dProfile, style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(isDark?LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120, height: 120,
                    child: ClipRRect(borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(dProfileImage),)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35, height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: dPrimaryColor
                      ),
                      child: const Icon(LineAwesomeIcons.alternate_pencil, size: 20, color: Colors.black,),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text(dProfileHeading, style: Theme.of(context).textTheme.headlineSmall,),
              Text(dProfileSubHHeading, style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height: 10,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: dPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()
                  ),
                  child: const Text(dEditProfile, style: TextStyle(color: dDarkColor),),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),
              
              // Menu
              ProfileMenuWidget(title: dMenu1, icon: LineAwesomeIcons.cog, onPress: (){}),
              ProfileMenuWidget(title: dMenu3, icon: LineAwesomeIcons.wallet, onPress: (){}),
              ProfileMenuWidget(title: dMenu4, icon: LineAwesomeIcons.user_check, onPress: (){}),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: dMenu2, icon: LineAwesomeIcons.info, onPress: (){}),
              ProfileMenuWidget(
                  title: dMenu5,
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: (){
                    AuthenticationRepository.instance.logout();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}


