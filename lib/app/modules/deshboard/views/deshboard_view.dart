import 'package:bottomnavvargetx/app/modules/category/views/category_view.dart';
import 'package:bottomnavvargetx/app/modules/favourite/views/favourite_view.dart';
import 'package:bottomnavvargetx/app/modules/home/views/home_view.dart';
import 'package:bottomnavvargetx/app/modules/setting/views/setting_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../../components/custom_animated_bottom_bar.dart';
import '../controllers/deshboard_controller.dart';

class DeshboardView extends GetView<DeshboardController> {
  @override
  Widget build(BuildContext context) {
    return
      Obx(()=>Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeView(),
              CategoryView(),
              FavouriteView(),
              SettingView(),
            ],
          ),
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.black,
          selectedIndex: controller.tabIndex.value,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index){
            print("index=> "+index.toString());
            controller.changeTabIndex(index);},
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.green,
              inactiveColor: inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent,
              inactiveColor: inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text(
                'Messages ',
              ),
              activeColor: Colors.pink,
              inactiveColor: inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue,
              inactiveColor: inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ));
  }
}
