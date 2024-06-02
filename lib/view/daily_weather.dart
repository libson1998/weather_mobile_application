import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/common_widgets/custom_sizedbox.dart';
import 'package:weather_application/common_widgets/expansion_card.dart';
import 'package:weather_application/common_widgets/list_view_widget.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/utils/utils.dart';

class DailyWeather extends StatefulWidget {
  final WeatherDataProvider weatherDataProvider;

  const DailyWeather({super.key, required this.weatherDataProvider});

  @override
  State<DailyWeather> createState() => _DailyWeatherState();
}

class _DailyWeatherState extends State<DailyWeather> {
  List<bool> _isExpandedList = [];

  @override
  void initState() {
    super.initState();
    _isExpandedList = List.generate(
      widget.weatherDataProvider.searchWeatherResponse!.daily!.length,
      (index) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dailyWeatherData =
        widget.weatherDataProvider.searchWeatherResponse!.daily;
    return ListViewWidget(
      scrollPhysics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dailyWeatherData!.length,
      itemBuilder: (BuildContext context, int index) {
        final dailyWeather = dailyWeatherData[index];
        return Column(
          children: [
            Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                  listTileTheme:
                      const ListTileThemeData(contentPadding: EdgeInsets.zero),
                ),
                child: ExpansionTile(
                  onExpansionChanged: (bool isExpanded) {
                    setState(() {
                      _isExpandedList[index] = isExpanded;
                    });
                  },
                  trailing: Icon(
                    _isExpandedList[index]
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_right,
                    color: blackColor.withOpacity(0.5),
                  ),
                  title: Row(
                    children: [
                      Text(
                          widget.weatherDataProvider
                              .formatDate(dailyWeather.dt!.toInt()),
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: blackColor.withOpacity(0.5))),
                      const Spacer(),
                      Text(
                          "${widget.weatherDataProvider.kelvinToCelsius(dailyWeather.temp!.max!.toDouble()).toStringAsFixed(0)}/ ${widget.weatherDataProvider.kelvinToCelsius(dailyWeather.temp!.min!.toDouble()).toStringAsFixed(0)}\u00B0 C",
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: blackColor.withOpacity(0.5))),
                      const CustomSizedBox(width: 8),
                      Image.network(
                        "$imageUrl${dailyWeather.weather![0].icon}.png",
                        height: 40,
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpansionCard(
                            strTitle: "Pressure:",
                            strData: " ${dailyWeather.pressure} hPa"),
                        ExpansionCard(
                            strTitle: "Humidity",
                            strData: " ${dailyWeather.humidity}%"),
                        ExpansionCard(
                            strTitle: "Wind speed",
                            strData: "${dailyWeather.windSpeed} m/s WNW"),
                        ExpansionCard(
                            strTitle: "Sunrise",
                            strData: widget.weatherDataProvider
                                .formatTime(dailyWeather.sunrise!.toInt())),
                        ExpansionCard(
                            strTitle: "UV index",
                            strData: "${dailyWeather.uvi}"),
                        ExpansionCard(
                            strTitle: "Sunset",
                            strData: widget.weatherDataProvider
                                .formatTime(dailyWeather.sunset!.toInt())),
                      ],
                    ),
                  ],
                )),
            Divider(
                color: blackColor.withOpacity(0.2), thickness: 0.5, height: 0)
          ],
        );
      },
    );
  }
}
