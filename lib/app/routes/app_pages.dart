import 'package:get/get.dart';

import '../modules/Log/bindings/log_binding.dart';
import '../modules/Log/views/log_view.dart';
import '../modules/coffee/bindings/coffee_binding.dart';
import '../modules/coffee/views/coffee_view.dart';
import '../modules/coffee_details/bindings/coffee_details_binding.dart';
import '../modules/coffee_details/views/coffee_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notFoundRoute/bindings/not_found_route_binding.dart';
import '../modules/notFoundRoute/views/not_found_route_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.LOG;
  static GetPage notFoundPage = GetPage(
    name: _Paths.NOT_FOUND_ROUTE,
    page: () => const NotFoundRouteView(),
    binding: NotFoundRouteBinding(),
  );

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    notFoundPage,
    GetPage(
      name: _Paths.LOG,
      page: () => const LogView(),
      binding: LogBinding(),
    ),
    GetPage(
      name: _Paths.COFFEE,
      page: () => CoffeeView(),
      binding: CoffeeBinding(),
    ),
    GetPage(
      name: _Paths.COFFEE_DETAILS,
      page: () => CoffeeDetailView(),
      binding: CoffeeDetailsBinding(),
    ),
  ];
}

class SplashView {}
