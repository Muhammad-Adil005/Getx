import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen Getx Tutorial'),
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
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
                //Get.to(ScreenOne());

                // This below is example of Named Routes through Getx
                Get.toNamed('ScreenOne');
              },
              child: Text('Go to Screen 1'),
            ),
          ),

          // This below code is for changing the Theme of the App
          // Card(
          //   child: ListTile(
          //     title: Text('Show Alert Dialog'),
          //     subtitle: Text('Dailog Alert with getx'),
          //     onTap: () {
          //       Get.defaultDialog(
          //         title: 'Delete Chat',
          //         middleText: 'Are you sure to delete the Text',
          //         contentPadding: EdgeInsets.all(20),
          //         titlePadding: EdgeInsets.only(top: 20),
          //         confirm: TextButton(onPressed: () {}, child: Text('Ok')),
          //         cancel: TextButton(
          //             onPressed: () {
          //               //  Navigator.pop(context); // Same pop functionality will be acheive through the Get.back
          //               Get.back();
          //             },
          //             child: Text('cancel')),
          //         // If you want to add more content in your dialog then simply used Content inside Content used Column and simply comment middleText
          //       );
          //     },
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text('Show Bottom Sheet'),
          //     subtitle: Text('Dailog Bottom sheet'),
          //     onTap: () {
          //       Get.bottomSheet(
          //         Container(
          //           decoration: BoxDecoration(
          //             color: Colors.blueAccent,
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //           child: Column(
          //             children: [
          //               ListTile(
          //                 leading: Icon(Icons.light_mode),
          //                 title: Text('Light Theme'),
          //                 onTap: () {
          //                   Get.changeTheme(ThemeData.light());
          //                 },
          //               ),
          //               ListTile(
          //                 leading: Icon(Icons.dark_mode),
          //                 title: Text('Dark Theme'),
          //                 onTap: () {
          //                   Get.changeTheme(ThemeData.dark());
          //                 },
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
