import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/listViewBuilder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', stok:10, price: 5000),
    Item(name: 'Salt', stok:5, price: 2000)
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav & Route - Rofika - 2041720099"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(itemList: items),
      ),
    );
    //throw UnimplementedError();
  }
}