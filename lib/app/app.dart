import 'package:flutter/material.dart';
import 'package:brew_crew/app/landing_page.dart';
import 'package:brew_crew/app/theme.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BizBrew',
      theme: AppTheme.light(),
      home: LandingPage(),
    );
  }
}
