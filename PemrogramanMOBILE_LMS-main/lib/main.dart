import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/welcome_screen.dart';
import 'views/home_screen.dart';
import 'screens/car_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Car Rental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      getPages: [
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/car_detail', page: () => CarDetailScreen()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
