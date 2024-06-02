import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/common_widgets/custom_sizedbox.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/model/model_class/SearchWeatherResponse.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/theme/theme.dart';

class AtmosphereData extends StatelessWidget {
  final WeatherDataProvider weatherDataProvider;

  const AtmosphereData({super.key, required this.weatherDataProvider});

  @override
  Widget build(BuildContext context) {
    final atmosphereData = weatherDataProvider.searchWeatherResponse!.current;

    final visibility = weatherDataProvider
        .metersToKilometers(atmosphereData!.visibility!.toDouble());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffF6F6F6)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                atmosphereData.windSpeed != null
                    ? Text(
                        "Wind: ${atmosphereData.windSpeed}m/s NNW",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
                atmosphereData.humidity != null
                    ? Text(
                        "Humidity: ${atmosphereData.humidity}%",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
                atmosphereData.uvi != null
                    ? Text(
                        "UV index: ${atmosphereData.uvi!.toStringAsFixed(1)}",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
              ],
            ),
            const CustomSizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                atmosphereData.pressure != null
                    ? Text(
                        "Pressure: ${atmosphereData.pressure}hPa",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
                atmosphereData.visibility != null
                    ? Text(
                        "Visibility: ${weatherDataProvider.metersToKilometers(atmosphereData.visibility!.toDouble()).toStringAsFixed(1)} Km",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
                atmosphereData.dewPoint != null
                    ? Text(
                        "Dew point ${weatherDataProvider.kelvinToCelsius(atmosphereData.dewPoint!.toDouble()).toStringAsFixed(2)}\u00B0 C",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      )
                    : const CustomSizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
