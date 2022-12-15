import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.items});

  final Item items;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(items.name)),
            Expanded(
              child: Text(
              items.stok.toString(),
              textAlign: TextAlign.center,
              )
            ),
            Expanded(
              child: Text(
              items.price.toString(),
              textAlign: TextAlign.end,
              )
            )
          ],
        ),
      ),
    );
  }
}