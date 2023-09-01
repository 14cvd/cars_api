import 'package:cars_api/widget/favorite_item.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Details"),
        actions: [
          CircleAvatar(child: FavoriteItem()),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black87,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://purepng.com/public/uploads/large/purepng.com-black-bmwbmwcarluxurious-carbmw-carsblack-bmw-1701527415989kvtoh.png'))),
              )),
          Expanded(
            flex: 2,
            child: Container(
              
            ),
          )
        ],
      ),
    );
  }
}
//Image.network(
     //           'https://purepng.com/public/uploads/large/purepng.com-black-bmwbmwcarluxurious-carbmw-carsblack-bmw-1701527415989kvtoh.png'),
      //    ),