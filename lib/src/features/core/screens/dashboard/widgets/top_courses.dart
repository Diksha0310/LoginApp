
import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/image_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/features/core/models/dashboard/top_course_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = TopCourses.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(list[index].title, style: textTheme.bodyLarge, maxLines: 2,
                            overflow: TextOverflow.ellipsis,),
                        ),
                        const Flexible(child: Image(image: AssetImage(dBannerImage3), height: 110,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: dDashBoardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].heading, style: textTheme.bodyLarge, overflow: TextOverflow.ellipsis,),
                            Text(list[index].subHeading, style: textTheme.bodySmall, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
       /* children: [
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("Flutter Crash Course", style: textTheme.bodyLarge, maxLines: 2,
                            overflow: TextOverflow.ellipsis,),
                        ),
                        Flexible(child: Image(image: AssetImage(dBannerImage3), height: 110,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: CircleBorder()),
                            onPressed: (){},
                            child: Icon(Icons.play_arrow)),
                        SizedBox(width: dDashBoardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: textTheme.bodyLarge, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: textTheme.bodySmall, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("Flutter Crash Course", style: textTheme.headlineSmall, maxLines: 2,
                            overflow: TextOverflow.ellipsis,),
                        ),
                        Flexible(child: Image(image: AssetImage(dBannerImage3), height: 110,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: CircleBorder()),
                            onPressed: (){},
                            child: Icon(Icons.play_arrow)),
                        SizedBox(width: dDashBoardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: textTheme.bodySmall, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: dCardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text("Flutter Crash Course", style: textTheme.headlineSmall, maxLines: 2,
                            overflow: TextOverflow.ellipsis,),
                        ),
                        Flexible(child: Image(image: AssetImage(dBannerImage3), height: 110,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: CircleBorder()),
                            onPressed: (){},
                            child: Icon(Icons.play_arrow)),
                        SizedBox(width: dDashBoardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections", style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis,),
                            Text("Programming Languages", style: textTheme.bodySmall, overflow: TextOverflow.ellipsis,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],*/
      ),
    );
  }
}