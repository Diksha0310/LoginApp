import 'package:flutter/material.dart';

class TopCourses{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  TopCourses(this.title, this.heading, this.subHeading, this.onPress);

  static List<TopCourses> list =[
    TopCourses("Flutter Crash Course", "3 Sections", "Programming Languages", null),
    TopCourses("HTML Crash Course", "3 Sections", "Programming Languages", null),
    TopCourses("C++ Crash Course", "3 Sections", "Programming Languages", null),
    TopCourses("Cyber Security Crash Course", "3 Sections", "Programming Languages", null),
    TopCourses("Python Crash Course", "3 Sections", "Programming Languages", null),
  ];
}