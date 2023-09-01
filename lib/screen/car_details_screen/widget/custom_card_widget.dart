import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key,
      required this.icons,
      required this.title,
      required this.info,
      required this.data});
  final IconData icons;
  final String title;
  final String info;
  final int data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            icons,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("$data $info"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//Image.network(
     //           'https://purepng.com/public/uploads/large/purepng.com-black-bmwbmwcarluxurious-carbmw-carsblack-bmw-1701527415989kvtoh.png'),
      //    ),