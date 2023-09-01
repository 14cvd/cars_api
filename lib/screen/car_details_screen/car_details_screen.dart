import 'package:cars_api/global/favorite_item.dart';
import 'package:cars_api/provider/all_providers.dart';
import 'package:cars_api/screen/car_details_screen/widget/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarDetails extends ConsumerWidget {
  CarDetails(
      {super.key,
      required this.imagePath,
      required this.seats,
      required this.speed,
      required this.engine});
  int seats;
  int speed;
  int engine;
  String imagePath;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Car Details"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            child: FavoriteItem(change: !ref.watch(isChange.notifier).state),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    image: DecorationImage(image: NetworkImage(imagePath))),
              )),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Car Name",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "⭐️ (4.5)",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Description"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Features",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomCardWidget(
                            icons: Icons.chair_alt_outlined,
                            title: "Total Capacity",
                            info: "seats",
                            data: seats,
                          ),
                          CustomCardWidget(
                            icons: Icons.speed_outlined,
                            title: "Hignest Speed",
                            info: "KM/H",
                            data: speed,
                          ),
                          CustomCardWidget(
                            icons: Icons.emergency_outlined,
                            title: "Engine Output",
                            info: "HP",
                            data: engine,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Column(
                            children: <Widget>[
                              Text("Price"),
                              Text("£ 45 000"),
                            ],
                          ),
                          Container(
                            width: 240,
                            height: 90,
                            decoration: const ShapeDecoration(
                              color: Colors.black87,
                              shape: StadiumBorder(),
                            ),
                            child: const Center(
                              child: Text(
                                "But Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
