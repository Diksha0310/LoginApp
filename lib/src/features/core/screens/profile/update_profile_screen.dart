
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/authentication/models/user_model.dart';
import 'package:loginapp/src/features/core/controllers/profile_controller.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(LineAwesomeIcons.angle_left),),
        title: Text(dEditProfile, style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dDefaultSize),
          child: FutureBuilder<List<UserModel>>(
            future: controller.getAllUsers(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData)
                  {
                    UserModel user = snapshot.data as UserModel;

                    //controllers
                    final email = TextEditingController(text: user.email);
                    final password = TextEditingController(text: user.password);
                    final fullName = TextEditingController(text: user.fullName);
                    final phoneNo = TextEditingController(text: user.phoneNo);

                    return Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(image: AssetImage(dProfileImage),),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: dPrimaryColor),
                                  child: const Icon(
                                    LineAwesomeIcons.camera,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(height: 50,),
                        Form(child: Column(
                          children: [
                            TextFormField(
                              controller: fullName,
                              decoration: const InputDecoration(
                                label: Text(dFullName),
                                prefixIcon: Icon(Icons.person_outline_outlined),),
                            ),
                            const SizedBox(height: dFormHeight-20,),

                            TextFormField(
                              controller: email,
                              decoration: const InputDecoration(
                                  label: Text(dEmail),
                                  prefixIcon: Icon(Icons.email_outlined)),
                            ),
                            const SizedBox(height: dFormHeight-20,),

                            TextFormField(
                              controller: phoneNo,
                              decoration: const InputDecoration(
                                  label: Text(dPhoneNo),
                                  prefixIcon: Icon(Icons.numbers)),
                            ),
                            const SizedBox(height: dFormHeight-20,),

                            TextFormField(
                              controller:password,
                              decoration: const InputDecoration(
                                  label: Text(dPassword),
                                  prefixIcon: Icon(Icons.fingerprint)),
                            ),
                            const SizedBox(height: dFormHeight,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final userData = UserModel(
                                      email: email.text.trim(),
                                      password: password.text.trim(),
                                      fullName: fullName.text.trim(),
                                      phoneNo: phoneNo.text.trim());

                                  await controller.updateRecord(userData);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: dPrimaryColor,
                                    side: BorderSide.none,
                                    shape: const StadiumBorder()
                                ),
                                child: const Text(dEditProfile, style: TextStyle(
                                    color: dDarkColor
                                ),),
                              ),
                            ),
                            const SizedBox(height: dFormHeight,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(
                                    TextSpan(
                                        text: dJoined,
                                        style: TextStyle(fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: dJoinedAt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)
                                          )
                                        ]
                                    )
                                ),
                                ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1),
                                      elevation: 0,
                                      foregroundColor: Colors.red,
                                      shape: const StadiumBorder(),
                                      side: BorderSide.none),

                                  child: const Text(dDelete),
                                )
                              ],
                            )
                          ],
                        ),)
                      ],

                    );
                  } else if(snapshot.hasError)
                  {
                    return Center(child: Text(snapshot.error.toString()),);
                  }else{
                  return const Center(child: Text("Something went wrong"),);
                }
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            },
          ),
        ),
    ),
    );
  }
}
