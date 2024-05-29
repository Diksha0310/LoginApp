import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/text_strings.dart';
import 'package:loginapp/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'widgets/search.dart';
import 'widgets/categories.dart';
import 'widgets/banners.dart';
import 'widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dDashboardTitle, style: textTheme.bodySmall,),
              Text(dDashboardHeading, style: textTheme.headlineSmall,),
              const SizedBox(height: dDashBoardPadding,),
              
              //Search box
              SearchBoxWidget(textTheme: textTheme),
              const SizedBox(height: dDashBoardPadding,),

              // categories
              DashboardCategoriesWidget(textTheme: textTheme),
              const SizedBox(height: dDashBoardPadding,),
              
              //Banners
              DashboardBanners(textTheme: textTheme),
              const SizedBox(height: dDashBoardPadding,),
              
              // Top Courses
              Text(dDashTopCourses, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)?.apply(fontSizeFactor: 1.2),),
              DashboardTopCourses(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}










