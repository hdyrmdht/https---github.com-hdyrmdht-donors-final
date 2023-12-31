// ignore_for_file: prefer_const_constructors

import 'package:bloodbank_donors/screens/donors/donor.dart';
import 'package:bloodbank_donors/screens/profile/profile.dart';
import 'package:bloodbank_donors/screens/home/search_page/view/search_page.dart';
import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

import '../screens/favouriates/views/hospital_view.dart';

import '../screens/settings/settings.dart';
import '../screens/home/home.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "homeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
    
    Scaffold( backgroundColor: Colors.transparent,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor:  Color.fromARGB(255, 116, 26, 26),
          onPressed: () {  
         Navigator.pushNamed(context,ProfileScreen.routeName );
         
            //  showaddtaskbottomsheet();
          },
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.white, width: 4)),
          child: ImageIcon(
            AssetImage("assets/images/profile_icon.png"),
          )),
      
      appBar: AppBar(backgroundColor: AppColors.primary,
        title: Text("Donors",style: TextStyle(fontSize: 25),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(onTap: (){
              Navigator.pushNamed(context, SearchPage.routeName);
            },
              child: Icon(Icons.search)),
          ),
        ],
        ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        color:AppColors.primary,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 116, 26, 26),
        unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/home_icon.png"),size: 30),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(right:16.0),
                    child: ImageIcon(AssetImage("assets/images/hospital.png"),size: 30),
                  ),
                  label: "Hospitals"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/blood-donor.png")),
                   label: "Donors"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, 
                  size: 30),
                  label: "Settings"),
            ]),
      ),
      body: tabs[index],
      
     ) ] 
      );
  }

  List<Widget> tabs = [
    HomeScreen(),
      HospitalsView(),
    DonorScreen(),
    SettingsTab(),
  ];
}
