import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search your car',
          suffixIcon: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: Icon(Icons.settings_outlined)),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Icon(
              Icons.search_outlined,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
