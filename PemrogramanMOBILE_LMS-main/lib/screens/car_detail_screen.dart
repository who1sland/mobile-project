import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/car_info.dart';
import '../widgets/car_specs.dart';

class CarDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil data kendaraan dari arguments
    final Map<String, dynamic> carData = Get.arguments ?? {};
    final String title = carData['title'] ?? 'Car Detail';
    final String imagePath = carData['imagePath'] ?? 'assets/audimobil.png';
    final String renterName = carData['renterName'] ?? 'Unknown Renter';
    final double rating = carData['rating'] ?? 4.8;
    final int reviewCount = carData['reviewCount'] ?? 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back(); // Navigasi kembali ke HomeScreen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                imagePath,
                height: 200,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(width: 5),
                Text(
                  '($reviewCount+ Review)',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Foto Renter
                ),
                const SizedBox(width: 10),
                Text(
                  renterName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_outline),
                  onPressed: () {
                    // Tambahkan aksi untuk chat
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Tambahkan aksi untuk telepon
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            CarInfo(),
            const SizedBox(height: 16),
            CarSpecs(),
          ],
        ),
      ),
    );
  }
}
