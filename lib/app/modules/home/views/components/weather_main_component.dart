import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app_widgets/app_text_style.dart';
import 'package:weather_app/app/constants/api_constant.dart';
import 'package:weather_app/app/modules/home/controllers/home_controller.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_strings.dart';
import '../../../../model/weather_api_model.dart';
import 'one_row.dart';

class WeatherMainComponent extends GetView<HomeController> {
  final WeatherApiModel data;
  const WeatherMainComponent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              AppStrings.currentWeather,
              style: AppTextStyle.bold(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.greyLight,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                        ApiConstants.getImage.replaceAll(
                            AppStrings.split, data.weather![0].icon!),
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Obx(
                        () => Text(
                          "${data.main!.temp!}${controller.temperatureUnits[controller.selectedUnit.value]!}",
                          style: AppTextStyle.bold(fontSize: 25),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton<String>(
                        icon: Icon(
                            Icons.more_vert), // Show icon instead of button
                        onSelected: (String value) {
                          controller.changeUnit(value); // Handle unit selection
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: AppStrings.celsius,
                            child: Text(AppStrings.celsius),
                          ),
                          const PopupMenuItem<String>(
                            value: AppStrings.fahrenheit,
                            child: Text(AppStrings.fahrenheit),
                          ),
                          const PopupMenuItem<String>(
                            value: AppStrings.kelvin,
                            child: Text(AppStrings.kelvin),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "  ${data.weather![0].description![0].toUpperCase()}${data.weather![0].description!.substring(1).toLowerCase()}",
                      style: AppTextStyle.bold(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            OneRow(
              title: AppStrings.windSeed,
              value: "${data.wind!.speed} km/h",
            ),
            OneRow(
              title: AppStrings.humidity,
              value: "${data.main!.humidity}%",
            ),
            OneRow(
              title: AppStrings.visibility,
              value: "${data.visibility! ~/ 1000} mi",
            ),
          ],
        ),
      ),
    );
  }
}
