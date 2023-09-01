import 'package:cars_api/screen/main_screen/widget/future_widget.dart';
import 'package:flutter/material.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Popular Car",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
                Text(
                  "View All",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  FutureBuilderWidget(index: 0),
                  FutureBuilderWidget(index: 1),
                ],
              ),
              Row(
                children: [
                  FutureBuilderWidget(index: 2),
                  FutureBuilderWidget(index: 3),
                ],
              ),
              Row(
                children: [
                  FutureBuilderWidget(index: 4),
                  FutureBuilderWidget(index: 5),
                ],
              ),
              Row(
                children: [
                  FutureBuilderWidget(index: 6),
                  FutureBuilderWidget(index: 7),
                ],
              ),
              Row(
                children: [
                  FutureBuilderWidget(index: 8),
                  FutureBuilderWidget(index: 9),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
