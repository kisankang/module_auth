import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module_auth/modules/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home_outlined),
            Text('Home'),
          ],
        ),
      ),
    );
  }
}
