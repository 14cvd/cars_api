// ignore: must_be_immutable
import 'package:cars_api/provider/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class FavoriteItem extends ConsumerWidget {
  FavoriteItem({super.key, required this.change});
  bool change;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(isChange);
    return InkWell(
        onTap: () {
          ref.read(isChange.notifier).state =
              !ref.read(isChange.notifier).state;
          change = value;
        },
        child: AnimatedCrossFade(
            firstChild: const Icon(Icons.favorite),
            secondChild: const Icon(Icons.favorite_border_outlined),
            crossFadeState:
                change ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 0))

        // isChange
        //     ? const Icon(Icons.favorite)
        //     : const Icon(Icons.favorite_border_outlined),
        );
  }
}
