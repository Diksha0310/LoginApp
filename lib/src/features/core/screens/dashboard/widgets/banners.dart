import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Image(image: AssetImage(dBookmarkIcon),)),
                    Flexible(child: Image(image: AssetImage(dBannerImage1)))
                  ],
                ),
                const SizedBox(height: 25,),
                Text(dDashBannerTitle1, style: textTheme.bodyLarge, maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(dDashBannerSubTitle, style: textTheme.bodySmall,maxLines: 1, overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ),
        const SizedBox(width: dDashBoardCardPadding,),
        Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Image(image: AssetImage(dBookmarkIcon),)),
                          Flexible(child: Image(image: AssetImage(dBannerImage2)))
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Text(dDashBannerTitle2, style: textTheme.bodyLarge, overflow: TextOverflow.ellipsis,),
                      Text(dDashBannerSubTitle, style: textTheme.bodySmall, overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: (){},
                      child: const Text(dDashButton),),
                )
              ],
            ))
      ],
    );
  }
}