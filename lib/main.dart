
import 'package:farm_ui/Screens/OtherScreens/notifications.dart';
import 'package:farm_ui/Utils/Constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: white),
      home: Notifications(),
    );
  }
}
