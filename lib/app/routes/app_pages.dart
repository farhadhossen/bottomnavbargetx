import 'package:get/get.dart';

import 'package:bottomnavvargetx/app/modules/category/bindings/category_binding.dart';
import 'package:bottomnavvargetx/app/modules/category/views/category_view.dart';
import 'package:bottomnavvargetx/app/modules/deshboard/bindings/deshboard_binding.dart';
import 'package:bottomnavvargetx/app/modules/deshboard/views/deshboard_view.dart';
import 'package:bottomnavvargetx/app/modules/favourite/bindings/favourite_binding.dart';
import 'package:bottomnavvargetx/app/modules/favourite/views/favourite_view.dart';
import 'package:bottomnavvargetx/app/modules/home/bindings/home_binding.dart';
import 'package:bottomnavvargetx/app/modules/home/views/home_view.dart';
import 'package:bottomnavvargetx/app/modules/setting/bindings/setting_binding.dart';
import 'package:bottomnavvargetx/app/modules/setting/views/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DESHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.DESHBOARD,
      page: () => DeshboardView(),
      binding: DeshboardBinding(),
    ),
  ];
}
