import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/model/model_class/SearchWeatherResponse.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/utils/utils.dart';
import 'package:weather_application/view/daily_weather.dart';

class HourlyWeather extends StatelessWidget {
  final List<Hourly> hourlyData;
  final WeatherDataProvider weatherDataProvider;

  const HourlyWeather(
      {super.key, required this.hourlyData, required this.weatherDataProvider});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(hourlyData.length, (index) {
            final hourlyWeatherData = hourlyData[index];
            return Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    Text(
                        weatherDataProvider
                            .formatTime(hourlyWeatherData.dt!.toInt()),
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: blackColor.withOpacity(0.3))),
                    Image.network(
                        "$imageUrl${hourlyWeatherData.weather![0].icon}.png"),
                    Text(
                        "${weatherDataProvider.kelvinToCelsius(hourlyWeatherData.temp!.toDouble()).toStringAsFixed(0)} \u00B0 C",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: blackColor.withOpacity(0.5))),
                  ],
                ));
          })
        ],
      ),
    );
  }
}
