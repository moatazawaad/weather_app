import 'package:weather_app_clean_arch/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountry {
  late final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
