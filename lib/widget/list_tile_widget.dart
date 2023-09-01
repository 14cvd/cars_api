import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.pngmart.com%2Ffiles%2F22%2FElon-Musk-PNG-Photo.png&f=1&nofb=1&ipt=95f72a519ea5ba04d5f9f5102c719efa17526a188e4a7e4c3e0e708f8f6f52e5&ipo=images',
        fit: BoxFit.fill,
      ),
      title: const Text("Welcome 👋"),
      subtitle: const Text("Elon Musk"),
      trailing: const CircleAvatar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Icon(Icons.notifications_active_outlined)),
    );
  }
}
