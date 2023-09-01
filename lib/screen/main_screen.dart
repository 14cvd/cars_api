import 'package:cars_api/widget/bottom_body.dart';
import 'package:cars_api/widget/car_icons_widget.dart';
import 'package:cars_api/widget/list_tile_widget.dart';
import 'package:cars_api/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.1),
        child: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTileWidget(),
              TextFieldWidget(),
              CarIcons(),
              BottomBody(),
            ],
          ),
        ),
      ),
    );
  }
}
