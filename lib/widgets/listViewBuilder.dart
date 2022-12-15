import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/card.dart';

class ListViewBuilder extends StatelessWidget{
  const ListViewBuilder({super.key, required this.itemList});

  final List<Item> itemList;

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: itemList.length,
      itemBuilder: (context, index) {
      final item = itemList[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/item', arguments: item);
          },
          child: CardWidget(items: item),
        );
      },
    );
  }
}