import 'package:flutter/material.dart';
import 'package:quran/screens/home/home.dart';

import 'route_name.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.homePage: (context) => const HomeScreen()
};
