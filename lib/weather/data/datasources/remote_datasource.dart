import 'package:dio/dio.dart';
import 'package:weather_app_clean_arch/core/utils/constances.dart';

import '../models/weather_model.dart';

// الطريقه دى مش صح ولا يجب ان تستخدم فقط لشرح الفكرة
abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
