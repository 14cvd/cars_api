import 'dart:developer';

import 'package:cars_api/model/car_model.dart';
import 'package:cars_api/model/car_model_polad.dart';
import 'package:dio/dio.dart';

sealed class GetCarService {
  static Future<List<CarModel>>? fetchCarItem() async {
    var response = await Dio().get(
        'https://api.api-ninjas.com/v1/cars?make=mercedes&limit=10',
        options: Options(headers: {
          'X-Api-Key': 'eYobgacd4JskW9chBQA7Eg==JH7FCsiUhXTxGKYY'
        }));

    //&=euwhRX9oozXx9elnBX2H1A==78xvfAK8XBBg3n8o
    if (response.statusCode == 200) {
      var data = response.data;
      if (data is List) {
        log(data.toString());
        log(data.map((e) => CarModel.fromJson(e)).toString());

        return data.map((e) => CarModel.fromJson(e)).toList();

        // return data.map((e) => carModelFromJson(e)).toList();
      }
    }
    return [];
  }

  static Future<List<Car>>? fetchCarItemPolad() async {
    var response = await Dio().get(
      'http://45.87.173.234:10/car',
    );

    //&=euwhRX9oozXx9elnBX2H1A==78xvfAK8XBBg3n8o
    if (response.statusCode == 200) {
      var data = response.data["cars"];

      return (data as List).map((e) => Car.fromJson(e)).toList();

      // return data.map((e) => carModelFromJson(e)).toList();
    }
    return [];
  }
}
