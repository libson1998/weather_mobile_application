import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_application/model/model_class/SearchCityResponse.dart';
import 'package:weather_application/model/model_class/SearchWeatherResponse.dart';
import 'package:weather_application/utils/utils.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: baseUrl) //live link

abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl, String? token}) {
    dio.options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: 60000), // Correctly set timeouts
      connectTimeout: const Duration(milliseconds: 60000),
      headers: {'Authorization': 'Bearer $token'},
    );
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET('3.0/onecall')
  Future<SearchWeatherResponse> getWeather(
      @Query("lat") String lat,
      @Query("lon") String lon,
      @Query("appid") String appId,
      );

  @GET('place/autocomplete/json')
  Future<SearchCityResponse> searchWeatherLocation(
    @Query("input") String searchInput,
    @Query("types") String type,
    @Query("key") String apiKey,
  );
}
