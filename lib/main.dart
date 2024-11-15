import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/explore_page.dart';
import 'presentation/pages/destination_detail_page.dart';  // Pastikan mengimpor halaman detail
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inisialisasi services dan controllers
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey, // Gunakan global navigator key
      title: 'Explorasi Indonesia',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(controller: homeController),
        '/explore': (context) => ExplorePage(controller: homeController),
        '/destinationDetail': (context) => DestinationDetailPage(),  // Menambahkan route ke DestinationDetailPage
      },
    );
  }
}
