import 'package:get/get.dart';

import 'package:weatherapp/app/modules/home/bindings/home_binding.dart';
import 'package:weatherapp/app/modules/home/views/home_view.dart';
import 'package:weatherapp/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:weatherapp/app/modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
  ];
}
