import 'package:get/get.dart';
import 'package:getx_counter/counter_page.dart';
import 'package:getx_counter/homepage.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => HomePage()),
    GetPage(name: "/counter", page: () => CounterPage()),
  ];
}
