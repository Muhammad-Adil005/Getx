import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 2'),
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
                // Navigator.pop(context); // same pop funcnality will be acheive through Get.Back
                Get.back();
              },
              child: Text('Go Back'),
            ),
          ),
        ],
      ),
    );
  }
}
