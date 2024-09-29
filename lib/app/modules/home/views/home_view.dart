import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app_widgets/app_text_style.dart';
import 'package:weather_app/app/app_widgets/custom_text_form_field.dart';
import 'package:weather_app/app/modules/home/views/components/weather_main_component.dart';

import '../../../constants/api_constant.dart';
import '../../../constants/app_strings.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Obx(
            () => CustomTextFormField(
              controller: controller.searchController,
              labelText: AppStrings.searchCity,
              labelFontStyle: 18,
              onTap: controller.onClickSearchCity,
              removeFloatingLabel: true,
              validator: (value) {
                return null;
              },
              suffixIcon: controller.hideCloseButton.isFalse
                  ? InkWell(
                      onTap: controller.clearSearch,
                      child: Icon(Icons.close),
                    )
                  : null,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ApiConstants.isLoading.isFalse
            ? controller.weatherApiModel.value.main != null
                ? WeatherMainComponent(
                    data: controller.weatherApiModel.value,
                  )
                : Center(
                    child: Text(
                      AppStrings.noDataFound,
                      style: AppTextStyle.bold(fontSize: 22),
                    ),
                  )
            : const SizedBox(),
      ),
    );
  }
}
