import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/modules/authentication/profile_page.dart';
import 'package:module_auth/modules/home/home_page.dart';
import 'package:module_auth/modules/main/main_controller.dart';

class MainPage extends GetWidget<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined),
              text: 'home',
            ),
            Tab(
              icon: Icon(Icons.person_outline),
              text: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
