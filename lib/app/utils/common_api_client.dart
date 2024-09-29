import 'dart:convert';

import 'package:dio/dio.dart' as dio_package;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:weather_app/app/constants/api_constant.dart';

import '../constants/app_strings.dart';
import 'common_pop_up.dart';

class ApiClient {
  var dio = Dio();

  ///This api client is small because i just focused on Functionality
  Future<dio_package.Response?> getAPI(path) async {
    Get.context!.loaderOverlay.show();
    ApiConstants.isLoading.value = true;

    var response = await dio.request(
      path,
      options: Options(
        method: 'GET',
      ),
    );
    ApiConstants.isLoading.value = false;
    Get.context!.loaderOverlay.hide();
    if (response.statusCode == 200) {
      return response;
    } else {
      if (kDebugMode) {
        CommonPopUp.showSnackBar(AppStrings.error,
            message: AppStrings.somethingWentWrong);
        print(response.statusMessage);
      }
    }
    if (kDebugMode) {
      print(json.encode(response.data));
    }
    return null;
  }
}
