import 'package:flutter/material.dart';

class FruitView extends StatelessWidget{
  const FruitView({
    super.key,
    required this.items,
    required this.index
  });

  final List<String> items;
  final int index;

@override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/natureimg.jpg'),
      ),
     const Padding(padding: EdgeInsets.only(left: 20),),
        Text(items[index])
       //const Icon(Icons.arrow_forward_ios,size: 16,)
       //Image.asset('assets/images/natureimg.jpg',width: 30,height: 30,fit: BoxFit.contain,)
  
      ],
    );
  }

}