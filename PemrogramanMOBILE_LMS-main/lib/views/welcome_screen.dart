import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  final double backgroundWidth;
  final double backgroundHeight;

  const WelcomeScreen({
    Key? key,
    this.backgroundWidth = double.infinity,
    this.backgroundHeight = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with adjustable size
          SizedBox(
            width: backgroundWidth,
            height: backgroundHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/car1.png'), // Ganti dengan path gambar yang sesuai
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Text Positioned in the Top Left Corner
          Positioned(
            top: 50,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find and rental\ncar in easy steps.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          // Button Positioned in the Bottom Filling Full Width
          Positioned(
            left: 16,
            right: 16,
            bottom: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke HomeScreen menggunakan route name
                Get.toNamed('/home');  // Perbaiki penulisan route menjadi '/home'
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Let's Go!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
