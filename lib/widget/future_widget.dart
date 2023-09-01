import 'package:cars_api/service/get_service.dart';
import 'package:cars_api/widget/favorite_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FutureBuilderWidget extends StatefulWidget {
  FutureBuilderWidget({super.key, required this.index, this.isChange = false});
  final int index;
  bool isChange = false;
  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetCarService.fetchCarItemPolad(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var item = snapshot.data;
          var data = item![widget.index];
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 150,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 100, top: 10),
                        child: FavoriteItem(),
                      ),
                      Container(
                        height: 140,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(data.image.toString())),
                        ),
                      ),
                      Text(data.title.toString()),
                      Text(
                          '£ ${data.price.toString()}          ⭐️ ${data.seats.toString()}'),
                      const Padding(padding: EdgeInsets.only(bottom: 15))
                    ],
                  ),
                ),
              ),
            ],
          );
        } else if (snapshot.hasData) {
          return const Center(child: Text("Erorr"));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
