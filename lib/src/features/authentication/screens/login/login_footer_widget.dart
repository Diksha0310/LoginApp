import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(dGoogleLogoImage), width: 30.0,),
            onPressed: (){},
            label: const Text(dSignInWithGoogle),),
        ),
        const SizedBox(height: dFormHeight -20,),
        TextButton(onPressed: (){},
          child: Text.rich(TextSpan(
              text: dDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(text: dSignUp,
                    style: TextStyle(color: Colors.blue))
              ]
          )),),
      ],
    );
  }
}