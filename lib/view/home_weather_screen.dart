import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:weather_application/common_widgets/custom_sizedbox.dart';
import 'package:weather_application/controller/weather_provider.dart';
import 'package:weather_application/theme/theme.dart';
import 'package:weather_application/utils/utils.dart';
import 'package:weather_application/view/atmosphere_data_screen.dart';
import 'package:weather_application/view/daily_weather.dart';
import 'package:weather_application/view/hourly_weather.dart';

class HomeWeatherScreen extends StatefulWidget {
  const HomeWeatherScreen({super.key});

  @override
  State<HomeWeatherScreen> createState() => _HomeWeatherScreenState();
}

class _HomeWeatherScreenState extends State<HomeWeatherScreen> {
  bool _hasFetchedData = false;
  ScrollController scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final weatherProvider =
        Provider.of<WeatherDataProvider>(context, listen: false);
    if (!_hasFetchedData) {
      weatherProvider.getUserLocation().then((_) {
        setState(() {
          _hasFetchedData = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 20,
        surfaceTintColor: whiteColor,
      ),
      extendBodyBehindAppBar: true,
      body: Consumer<WeatherDataProvider>(
        builder: (context, weatherProvider, child) {
          if (!_hasFetchedData) {
            return const Center(
                child: CircularProgressIndicator()); 
          } else {
            final weatherData = weatherProvider.searchWeatherResponse!.current;
            return SafeArea(
                child: !_hasFetchedData
                    ? const SingleChildScrollView()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/SearchLocationScreen");
                                  },
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/search.svg",
                                        color: Colors.black,
                                      ),
                                      const CustomSizedBox(
                                        width: 4,
                                      ),
                                      weatherProvider.searchWeatherResponse !=
                                              null
                                          ? Text(
                                              weatherProvider.cityName!,
                                              style: GoogleFonts.lato(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : const CustomSizedBox(),
                                      const CustomSizedBox(
                                        width: 4,
                                      ),
                                      SvgPicture.asset(
                                          "assets/icons/location.svg"),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const Icon(Icons.tune_rounded)
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  CustomSizedBox(height: screenHeight * 0.02),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      weatherProvider.searchWeatherResponse !=
                                              null
                                          ? Image.network(
                                              "$imageUrl${weatherData!.weather![0].icon}.png")
                                          : const CustomSizedBox(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            weatherData!.weather![0].main
                                                .toString(),
                                            style: GoogleFonts.lato(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                            color: blackColor.withOpacity(0.9)
                                            ),
                                          ),
                                          Text(
                                            weatherData.weather![0].description
                                                .toString(),
                                            style: GoogleFonts.lato(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                color: blackColor
                                                    .withOpacity(0.5)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  weatherProvider.searchWeatherResponse != null
                                      ? Text(
                                          "${weatherProvider.kelvinToCelsius(weatherData.temp!.toDouble()).toStringAsFixed(2)} \u00B0 C",
                                          style: GoogleFonts.lato(
                                              fontSize: 50,
                                              fontWeight: FontWeight.normal),
                                        )
                                      : const CustomSizedBox(),
                                  Text(
                                    "Feels like ${weatherProvider.kelvinToCelsius(weatherData.feelsLike!.toDouble()).toStringAsFixed(2)} \u00B0 C",
                                    style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor.withOpacity(0.5)),
                                  ),
                                  const CustomSizedBox(height: 30),
                                  AtmosphereData(                 //todo  It shows wind,visibility,dew point etc...
                                      weatherDataProvider: weatherProvider),
                                  const CustomSizedBox(height: 24),
                                  HourlyWeather(
                                    hourlyData: weatherProvider
                                        .searchWeatherResponse!.hourly!,      //todo It shows the hourly weather report
                                    weatherDataProvider: weatherProvider,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: DailyWeather(
                                        weatherDataProvider: weatherProvider),  // todo It shows the daily weather report and its detailed report
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
          }
        },
      ),
    );
  }
}
