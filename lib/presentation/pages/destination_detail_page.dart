import 'package:flutter/material.dart';

class DestinationDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil data destinasi yang diteruskan melalui arguments
    final Map<String, String> destination = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    // Mendapatkan deskripsi lengkap berdasarkan nama destinasi
    final String fullDescription = _getFullDescription(destination['name']!);

    return Scaffold(
      appBar: AppBar(
        title: Text(destination['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar destinasi utama
              Image.asset(
                destination['image']!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              SizedBox(height: 20),

              // Nama destinasi
              Text(
                destination['name']!,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 10),

              // Deskripsi destinasi lengkap
              Text(
                fullDescription,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk mendapatkan deskripsi lengkap berdasarkan nama destinasi
  String _getFullDescription(String destinationName) {
    switch (destinationName) {
      case 'Bali':
        return 'Bali adalah destinasi wisata terkenal yang menawarkan pantai-pantai indah, budaya yang kaya, serta kehidupan malam yang semarak. Anda dapat menjelajahi tempat-tempat seperti Ubud, Gunung Batur, Pura Tanah Lot, serta Kuta yang terkenal dengan keindahan sunset-nya.';
      case 'Yogyakarta':
        return 'Yogyakarta adalah kota budaya yang terkenal dengan candi-candi bersejarah seperti Candi Borobudur dan Prambanan. Selain situs-situs sejarah, Yogyakarta juga menawarkan pengalaman budaya melalui seni, kerajinan, serta kuliner khasnya yang menggugah selera.';
      case 'Jakarta':
        return 'Jakarta, ibu kota Indonesia, adalah kota metropolitan yang sibuk dengan berbagai atraksi modern dan sejarah yang kaya. Tempat-tempat menarik di Jakarta antara lain Monas, Kota Tua, serta berbagai pusat perbelanjaan besar. Anda juga bisa menikmati masakan Indonesia yang lezat di berbagai restoran terkenal.';
      default:
        return 'Destinasi ini menawarkan pengalaman yang menarik untuk dijelajahi!';
    }
  }
}
