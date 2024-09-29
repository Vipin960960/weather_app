import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:weather_app/app/constants/app_strings.dart';

class ApiConstants {
  static RxBool isLoading = false.obs;

  static const baseApi = "https://api.openweathermap.org/";
  static const weatherAPI = "${baseApi}data/2.5/weather?";
  static const geoCodingAPI = "${baseApi}geo/1.0/direct?";
  static const getImage =
      "https://openweathermap.org/img/wn/${AppStrings.split}@2x.png";
}
