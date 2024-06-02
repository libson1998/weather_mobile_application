import 'package:flutter/material.dart';
import 'package:weather_application/view/home_weather_screen.dart';
import 'package:weather_application/view/search_location.dart';

class RouteGenerator {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const HomeWeatherScreen(),
        );
      case "/SearchLocationScreen":
        return MaterialPageRoute(
          builder: (context) => const SearchLocationScreen(),
        );
    }
    return null;
  }
}
