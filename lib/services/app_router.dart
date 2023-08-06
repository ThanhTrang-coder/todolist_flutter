import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todos_flutter/screens/home_page.dart';
import 'package:todos_flutter/screens/statistics_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case TasksPage.id:
        return MaterialPageRoute(
            builder: (_) => const TasksPage()
        );
      case StatisticPage.id:
        return MaterialPageRoute(
            builder: (_) => const StatisticPage()
        );
      default: null;
    }
  }
}