import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleHomeScreen extends StatefulWidget {
  const LocaleHomeScreen({super.key});

  @override
  State<LocaleHomeScreen> createState() => _LocaleHomeScreenState();
}

class _LocaleHomeScreenState extends State<LocaleHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('name'.tr),
          Text('details'.tr),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                  setState(() {});
                },
                child: Text('English'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('ur', 'PK'));
                  setState(() {});
                },
                child: Text('Urdu'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
