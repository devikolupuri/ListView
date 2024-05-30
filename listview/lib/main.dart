import 'package:flutter/material.dart';
import 'package:listview/Views/FruitView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = [   
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

 MyApp({super.key});           

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
             padding: const EdgeInsets.only(left: 5,bottom: 20,right: 10,top: 10),
             child: FruitView(items: items,index: index,),
            );
             
          },separatorBuilder: (BuildContext context, int index) {
            return const Divider();
        
          })
        ),
      );
  }
}