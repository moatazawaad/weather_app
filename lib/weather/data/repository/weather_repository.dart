import 'package:weather_app_clean_arch/weather/data/datasources/remote_datasource.dart';
import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_app_clean_arch/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
