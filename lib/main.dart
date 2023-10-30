// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/onboarding/onboarding.dart';
import 'package:bloodbank_donors/screens/profile/profile.dart';
import 'package:bloodbank_donors/screens/home/search_page/view/search_page.dart';

import 'package:bloodbank_donors/screens/settings/settings.dart';
import 'package:flutter/material.dart';

import 'screens/favouriates/views/hospital_view.dart';
import 'screens/settings/helppage/HelpPage.dart';
import 'screens/settings/settingspage/Notification.dart';
import 'screens/settings/settingspage/SecurityPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        ProfileScreen.routeName :(context) => ProfileScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SearchPage.routeName: (context) => SearchPage(),
        HospitalsView.routeName: (context) => HospitalsView(),
        NotifiPage.routeName: (context) => NotifiPage(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SecurityPage.routeName: (context) => SecurityPage(),
        HelpPage.routeName: (context) => HelpPage(),
         OnboardingScreen.routeName : (context) => OnboardingScreen(),
     
      },

    );
  }
}
