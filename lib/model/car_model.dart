// To parse this JSON data, do
//
//     final carModel = carModelFromJson(jsonString);

import 'dart:convert';

CarModel carModelFromJson(String str) => CarModel.fromJson(json.decode(str));

String carModelToJson(CarModel data) => json.encode(data.toJson());

class CarModel {
  int? cityMpg;
  String? carModelClass;
  int? combinationMpg;
  int? cylinders;
  double? displacement;
  String? drive;
  String? fuelType;
  int? highwayMpg;
  String? make;
  String? model;
  String? transmission;
  int? year;

  CarModel({
    this.cityMpg,
    this.carModelClass,
    this.combinationMpg,
    this.cylinders,
    this.displacement,
    this.drive,
    this.fuelType,
    this.highwayMpg,
    this.make,
    this.model,
    this.transmission,
    this.year,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        cityMpg: json["city_mpg"],
        carModelClass: json["class"],
        combinationMpg: json["combination_mpg"],
        cylinders: json["cylinders"],
        displacement: json["displacement"]?.toDouble(),
        drive: json["drive"],
        fuelType: json["fuel_type"],
        highwayMpg: json["highway_mpg"],
        make: json["make"],
        model: json["model"],
        transmission: json["transmission"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "city_mpg": cityMpg,
        "class": carModelClass,
        "combination_mpg": combinationMpg,
        "cylinders": cylinders,
        "displacement": displacement,
        "drive": drive,
        "fuel_type": fuelType,
        "highway_mpg": highwayMpg,
        "make": make,
        "model": model,
        "transmission": transmission,
        "year": year,
      };
}
