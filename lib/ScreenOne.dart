import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ScreenTwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Adil',
            'Flutter developer',
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            icon: Icon(Icons.accessibility_new),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // This code is for navigation

          Center(
            child: TextButton(
              onPressed: () {
                Get.to(ScreenTwo());
                // Navigator.pop(context); // same pop funcnality will be acheive through Get.Back
                // Get.back();
              },
              child: Text('Go to Screen 2'),
            ),
          ),
        ],
      ),
    );
  }
}
