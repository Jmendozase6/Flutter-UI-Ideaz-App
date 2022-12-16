import 'package:flutter/material.dart';
import 'package:watch_app/screens/home_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.routeName: (_) => const HomeScreen(),
  };
}
