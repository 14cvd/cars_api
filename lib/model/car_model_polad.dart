// To parse this JSON data, do
//
//     final carModelPolad = carModelPoladFromJson(jsonString);

import 'dart:convert';

CarModelPolad carModelPoladFromJson(String str) =>
    CarModelPolad.fromJson(json.decode(str));

String carModelPoladToJson(CarModelPolad data) => json.encode(data.toJson());

class CarModelPolad {
  List<Car>? cars;
  List<Mark>? marks;

  CarModelPolad({
    this.cars,
    this.marks,
  });

  factory CarModelPolad.fromJson(Map<String, dynamic> json) => CarModelPolad(
        cars: json["cars"] == null
            ? []
            : List<Car>.from(json["cars"]!.map((x) => Car.fromJson(x))),
        marks: json["marks"] == null
            ? []
            : List<Mark>.from(json["marks"]!.map((x) => Mark.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cars": cars == null
            ? []
            : List<dynamic>.from(cars!.map((x) => x.toJson())),
        "marks": marks == null
            ? []
            : List<dynamic>.from(marks!.map((x) => x.toJson())),
      };
}

class Car {
  int? id;
  String? title;
  Description? description;
  int? price;
  int? speed;
  int? seats;
  int? engine;
  String? brand;
  Category? category;
  String? image;

  Car({
    this.id,
    this.title,
    this.description,
    this.price,
    this.speed,
    this.seats,
    this.engine,
    this.brand,
    this.category,
    this.image,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        id: json["id"],
        title: json["title"],
        description: descriptionValues.map[json["description"]]!,
        price: json["price"],
        speed: json["speed"],
        seats: json["seats"],
        engine: json["engine"],
        brand: json["brand"],
        category: categoryValues.map[json["category"]]!,
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": descriptionValues.reverse[description],
        "price": price,
        "speed": speed,
        "seats": seats,
        "engine": engine,
        "brand": brand,
        "category": categoryValues.reverse[category],
        "image": image,
      };
}

enum Category { SEDAN, SPORT_CAR, SUV }

final categoryValues = EnumValues({
  "Sedan": Category.SEDAN,
  "Sport Car": Category.SPORT_CAR,
  "SUV": Category.SUV
});

enum Description { A_CAR_WITH_HIGH_SPECS_THAT_IS_RENTED_AT_AN_AFFORDABLE_PRICE }

final descriptionValues = EnumValues({
  "A car with high specs that is rented at an affordable price":
      Description.A_CAR_WITH_HIGH_SPECS_THAT_IS_RENTED_AT_AN_AFFORDABLE_PRICE
});

class Mark {
  int? id;
  String? title;
  String? image;

  Mark({
    this.id,
    this.title,
    this.image,
  });

  factory Mark.fromJson(Map<String, dynamic> json) => Mark(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
