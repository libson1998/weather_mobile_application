import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:developer' as dev;
import 'package:dio/dio.dart' as dio;
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:weather_application/model/model_class/SearchCityResponse.dart';
import 'package:weather_application/model/model_class/SearchWeatherResponse.dart';
import 'package:weather_application/model/network/api_service.dart';
import 'package:weather_application/utils/utils.dart';
import 'package:geolocator/geolocator.dart';

class WeatherDataProvider extends ChangeNotifier {
  bool _isLoaded = false;

  String? _searchInputLocation = "";
  String? _lat = "";
  String? _long = "";
  LatLng? currentLatLng;
  String? _cityName;
  SearchWeatherResponse? _searchWeatherResponse;
  SearchCityResponse? _searchCityResponse;
  TextEditingController? _textEditingController;
  String? _coordinates = 'Fetching coordinates...';

  SearchCityResponse? get searchCityResponse => _searchCityResponse;

  TextEditingController? get textEditingController => _textEditingController;

  SearchWeatherResponse? get searchWeatherResponse => _searchWeatherResponse;

  String? get coordinates => _coordinates;

  String? get cityName => _cityName;

  String? get lat => _lat;

  String? get long => _long;

  bool get isLoaded => _isLoaded;

  String? get searchInputLocation => _searchInputLocation;

  set searchLocation(String? value) {
    _searchInputLocation = value;
    notifyListeners();
  }

  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  double metersToKilometers(double meters) {
    return meters / 1000.0;
  }

  String formatTime(int timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
        timestamp * 1000); //todo To get formatted time
    final timeFormat = DateFormat('h:mm a');
    return timeFormat.format(dateTime);
  }

  String formatDate(int timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
        timestamp * 1000); //todo To get formatted date
    final dateFormat = DateFormat('EEEE, MMM d');
    return dateFormat.format(dateTime);
  }

  Future<SearchWeatherResponse?> getLocationWeather(
      //todo To get location from API
      String lat,
      String long) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _isLoaded = true;
      notifyListeners();
    });
    try {
      ApiService apiService = ApiService(
        dio.Dio(),
      );
      _searchWeatherResponse =
          await apiService.getWeather(lat.toString(), long.toString(), addId);
      _isLoaded = false;
      notifyListeners();
      print(_searchWeatherResponse.toString());
    } catch (e) {
      dev.log('CAUGHT PROFILE_PAGE_DETAILS_RESPONSE',
          error: _searchWeatherResponse);
      _isLoaded = false;
      notifyListeners();
    }
    return _searchWeatherResponse;
  }

  Future<SearchCityResponse?> searchWeatherLocation(String searchInput) async {
    //todo It will list the location from google geolocator
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _isLoaded = true;
      notifyListeners();
    });
    try {
      ApiService apiService = ApiService(dio.Dio(),
          baseUrl: "https://maps.googleapis.com/maps/api/");
      _searchCityResponse = await apiService.searchWeatherLocation(
          searchInput, "geocode", apiKey);
      _isLoaded = false;
      print(_searchCityResponse.toString());

      notifyListeners();
    } catch (e) {
      dev.log('CAUGHT PROFILE_PAGE_DETAILS_RESPONSE',
          error: _searchCityResponse);
      _isLoaded = false;
      notifyListeners();
    }
    return _searchCityResponse;
  }

  Future<void> getUserLocation() async {
    //todo It fetch current user location when user open the application
    bool serviceEnabled;
    LocationPermission permission;
    Position currentPosition;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    currentPosition = await Geolocator.getCurrentPosition();

    currentLatLng = LatLng(currentPosition.latitude, currentPosition.longitude);
    _lat = currentLatLng!.latitude.toString();
    _long = currentLatLng!.longitude.toString();
    List<Placemark> placemarks = await placemarkFromCoordinates(
        currentLatLng!.latitude, currentLatLng!.longitude);
    Placemark place = placemarks[0];
    _cityName = place.locality;
    print(_cityName.toString());
    await getLocationWeather(_lat!, _long!);
    print(currentLatLng);

    notifyListeners();
  }

  void fetchCoordinates(String cityName) async {
    //todo it convert the the searched city name to lat long.
    try {
      List<Location> locations = await locationFromAddress(cityName);
      Location location = locations[0];

      _coordinates = 'Lat: ${location.latitude}, Long: ${location.longitude}';
      getLocationWeather(
          location.latitude.toString(), location.longitude.toString());
      _cityName = cityName;
      notifyListeners();
    } catch (e) {
      _coordinates = 'Failed to get coordinates';
      notifyListeners();
    }
  }
}
