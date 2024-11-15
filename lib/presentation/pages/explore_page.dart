import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'base_page.dart';

class ExplorePage extends StatelessWidget {
  final HomeController controller;

  // Constructor untuk menerima controller
  ExplorePage({required this.controller});

  // Daftar destinasi (contoh)
  final List<Map<String, String>> destinations = [
    {
      'name': 'Bali',
      'image': 'assets/images/bali.jpg',
      'description': 'Pantai yang indah dan budaya yang kaya.',
    },
    {
      'name': 'Yogyakarta',
      'image': 'assets/images/yogya.jpg',
      'description': 'Kota budaya dengan berbagai candi bersejarah.',
    },
    {
      'name': 'Jakarta',
      'image': 'assets/images/jakarta.jpeg',
      'description': 'Ibukota Indonesia dengan berbagai atraksi modern.',
    },
    // Tambahkan destinasi lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var destination = destinations[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                // Navigasi ke halaman detail destinasi menggunakan named route
                Navigator.pushNamed(
                  context,
                  '/destinationDetail',
                  arguments: destination,  // Mengirimkan data destinasi
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      destination['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      destination['name']!,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      destination['description']!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      selectedIndex: 1, // Tab Explore selected
      controller: controller,
    );
  }
}
