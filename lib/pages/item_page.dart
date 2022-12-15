import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({super.key});

  //static const routeName = '/item';

  @override 
  Widget build(BuildContext context){
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("${itemArgs.name} Detail"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(itemArgs.name),
              const Text(" stock "),
              Text(itemArgs.stok.toString()),
              const Text(" at the price of each item is "),
              Text(itemArgs.price.toString()),
            ],
          )
        ],
      ),
    );
  }
}