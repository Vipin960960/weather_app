import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/constants/api_constant.dart';
import 'package:weather_app/app/constants/app_strings.dart';

import '../../../constants/app_form_list_data.dart';
import '../../../model/lat_long_api_model.dart';
import '../../../model/weather_api_model.dart';
import '../../../utils/common_api_client.dart';
import '../../../utils/common_methods.dart';
import '../../../utils/common_pop_up.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;

  late ApiClient apiClient;

  String selectedCity = "";
  String selectedState = "";
  String selectedCountry = "";
  String latitude = "";
  String longitude = "";

  RxString selectedUnit = AppStrings.celsius.obs;

  RxBool hideCloseButton = true.obs;

  Rx<WeatherApiModel> weatherApiModel = WeatherApiModel().obs;

  Map<String, String> temperatureUnits = {};
  Map<String, String> temperatureUnitsAPI = {};

  @override
  void onInit() {
    searchController = TextEditingController();
    apiClient = ApiClient();
    selectedUnit.value = AppStrings.celsius;
    temperatureUnits = {
      AppStrings.celsius: '°C',
      AppStrings.fahrenheit: '°F',
      AppStrings.kelvin: 'K',
    };

    temperatureUnitsAPI = {
      AppStrings.celsius: "metric",
      AppStrings.fahrenheit: "imperial",
      AppStrings.kelvin: "standard",
    };

    super.onInit();
  }

  @override
  void onReady() {
    onClickSearchCity("");
    super.onReady();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  void onClickSearchCity(value) {
    if (selectedState.isNotEmpty && selectedCountry.isNotEmpty) {
      getCityList(selectedCountry, selectedState);
    } else {
      List<String> countriesList =
          AppFormListData.instance.countryMap.keys.toList();
      countriesList.sort();

      CommonPopUp.showBottomSheetList(
        context: Get.context,
        height: Get.height * 0.7,
        list: countriesList,
        title: 'Select Country',
        selectedValue: selectedCountry,
        onTap: (country) async {
          // Selecting State
          List<String> statesList =
              AppFormListData.instance.countryMap[country]!.keys.toList();
          statesList.sort();
          await CommonMethods.timerForNextList();
          CommonPopUp.showBottomSheetList(
            context: Get.context,
            height: Get.height * 0.7,
            list: statesList,
            title: 'State in $country',
            selectedValue: selectedState,
            onTap: (state) async {
              // Selecting city
              List<String> citiesList =
                  AppFormListData.instance.countryMap[country]![state]!;
              citiesList.sort();
              await CommonMethods.timerForNextList();
              getCityList(country, state);
            },
          );
        },
      );
    }
  }

  void getCityList(String country, String state) {
    CommonPopUp.showBottomSheetList(
      context: Get.context,
      height: Get.height * 0.7,
      list: AppFormListData.instance.countryMap[country]![state]!,
      title: 'City in $state',
      selectedValue: selectedCity,
      onTap: (city) {
        selectedCity = city;
        selectedState = state;
        selectedCountry = country;
        callLatLonApi();
      },
    );
  }

  Future<void> callLatLonApi() async {
    final response = await apiClient.getAPI(
        '${ApiConstants.geoCodingAPI}q=$selectedCity,$selectedState,$selectedCountry&limit=1&appid=${AppFormListData.instance.getApiKey}');

    if (response != null) {
      if (response.data.length > 0) {
        LatLongApiModel latLongApiModel =
            LatLongApiModel.fromJson(response.data[0]);
        latitude = latLongApiModel.lat.toString();
        longitude = latLongApiModel.lon.toString();
        callWeatherApi();
      } else {
        String oldCountry = searchController.text;
        if (oldCountry != "") {
          selectedCity = oldCountry.split(",")[0];
          selectedState = oldCountry.split(",")[1];
          selectedCountry = oldCountry.split(",")[2];
        }
        CommonPopUp.showSnackBar(AppStrings.error,
            message: AppStrings.latLongNotFount);
      }
    }
  }

  Future<void> callWeatherApi() async {
    final response = await apiClient.getAPI(
        '${ApiConstants.weatherAPI}lat=$latitude&lon=$longitude&units=${temperatureUnitsAPI[selectedUnit.value]!}&appid=${AppFormListData.instance.getApiKey}');
    if (response != null) {
      hideCloseButton.value = false;
      searchController.text = "$selectedCity,$selectedState,$selectedCountry";
      weatherApiModel.value = WeatherApiModel.fromJson(response.data);
    }
  }

  void changeUnit(String unit) {
    selectedUnit.value = unit;
    callWeatherApi();
  }

  void clearSearch() {
    selectedCity = "";
    selectedState = "";
    selectedCountry = "";
    searchController.clear();
    hideCloseButton.value = true;
    weatherApiModel.value = WeatherApiModel();
    // FocusScope.of(Get.context!).unfocus();
    onClickSearchCity("");
  }
}
