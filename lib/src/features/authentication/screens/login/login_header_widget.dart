
import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(image: const AssetImage(dWelcomeScreenImage), height: size.height*0.2,),
        Text(dLoginTitle, style: Theme.of(context).textTheme.headlineLarge,),
        Text(dLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
