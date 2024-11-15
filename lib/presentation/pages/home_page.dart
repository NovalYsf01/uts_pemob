import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';
import 'base_page.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  // Konstruktor untuk menerima controller
  HomePage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Container(
        // Menggunakan gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 48, 17, 106), 
              const Color.fromARGB(255, 223, 220, 238), 
            ],
          ),
        ),
        // Menggunakan Center widget untuk memastikan teks ada di tengah
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Posisikan secara vertikal di tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Posisikan secara horizontal di tengah
            children: <Widget>[
              // Judul
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Explorasi Indonesia',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoMono', // Font menarik (ganti jika perlu)
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Menjaga teks tetap terpusat
                ),
              ),
              // Deskripsi
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center, // Agar teks di tengah
                  child: Text(
                    'Temukan destinasi menarik dan budaya kaya Indonesia!',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto', // Font lain yang lebih elegan
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center, // Menjaga teks tetap terpusat
                  ),
                ),
              ),
              // Button untuk navigasi ke ExplorePage
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Menavigasi ke ExplorePage
                    Navigator.pushNamed(context, '/explore');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Menggunakan backgroundColor
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Eksplorasi Lebih Lanjut'),
                ),
              ),
            ],
          ),
        ),
      ),
      selectedIndex: 0, // Home tab is selected
      controller: controller, // Kirim controller ke BasePage
    );
  }
}
