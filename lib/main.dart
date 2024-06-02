import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/utils/routes.dart';
import 'package:weather_application/view/home_weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RouteGenerator _routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherDataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather',
        onGenerateRoute: _routeGenerator.generateRoute,
        theme: ThemeData(),
      ),
    );
  }
}
