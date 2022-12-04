import '../../../global/export/export.dart';
import '../../feature/presentation/page/home/home_view.dart';


part 'routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.recent,
      page: () => RecentView(),
    ),
    GetPage(
      name: _Paths.wordOfTheDay,
      page: () => WordOfTheDayView(),
    ),
    GetPage(
      name: _Paths.searchResult,
      page: () => SearchResultView(),
    ),
    GetPage(
      name: _Paths.aboutMe,
      page: () => const AboutMeView(),
    ),
  ];
}
