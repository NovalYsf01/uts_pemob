import '../../core/navigation/navigation_service.dart';

class NavigateToPageUseCase {
  final NavigationService _navigationService;

  NavigateToPageUseCase(this._navigationService);

  void execute(int index) {
    switch (index) {
      case 0:
        _navigationService.navigateTo('/home');
        break;
      case 1:
        _navigationService.navigateTo('/explore');
        break;

      default:
        throw Exception('Invalid page index');
    }
  }
}