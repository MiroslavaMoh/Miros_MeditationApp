import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/screen/home/home_screen.dart';
import 'package:meditationapp/common_widget/tab_button.dart';
import 'package:meditationapp/screen/meditate/meditate_screen.dart';
import 'package:meditationapp/screen/sleep/sleep_screen.dart';
import 'package:meditationapp/screen/music/music_screen.dart';
import 'package:meditationapp/screen/profile/profile_screen.dart';

class MainTabViewScreen extends StatefulWidget {
  const MainTabViewScreen({super.key});

  @override
  State<MainTabViewScreen> createState() => _MainTabViewScreenState();
}

class _MainTabViewScreenState extends State<MainTabViewScreen> with SingleTickerProviderStateMixin{

  TabController? controller;
  int selectTab =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener((){
      selectTab = controller?.index ?? 0;
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
    
      body: TabBarView(
        controller: controller,
        children: [
        const HomeScreen(),
        const SleepScreen(),
        const MeditateScreen(),
        const MusicScreen(),
        const ProfileScreen(),
      ]),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, -4))]
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(icon: "assets/img/home_tab.png", title: "Inicio", isSelect: selectTab == 0, onPressed: (){
                changeTab(0);}),
              TabButton(icon: "assets/img/sleep_tab.png", title: "Dormir", isSelect: selectTab == 1, onPressed: (){
                changeTab(1);}),
              TabButton(icon: "assets/img/meditate_tab.png", title: "Meditar", isSelect: selectTab == 2, onPressed: (){
                changeTab(2);}),
              TabButton(icon: "assets/img/music_tab.png", title: "Música", isSelect: selectTab == 3, onPressed: (){
                changeTab(3);}),
              TabButton(icon: "assets/img/profile_tab.png", title: "Miros", isSelect: selectTab == 4, onPressed: (){
                changeTab(4);}),
            ],

        )
        ),
      ),

    );
}
    void changeTab(int index){
      selectTab= index;
      controller?.animateTo(index);
      setState(() {
        
      });
    } 
}