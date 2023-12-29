import 'package:flutter/material.dart';
import 'package:sab_g/components/buynowbar.dart';
import 'package:sab_g/components/item_list.dart';


// ignore: must_be_immutable
class MyFruits extends StatefulWidget {
  double cost;
  MyFruits({super.key, required this.cost});

  @override
  State<MyFruits> createState() => _MyFruitsState();
}

class _MyFruitsState extends State<MyFruits> {
  void itemChanged(double diff) {
    setState(() {
      widget.cost += diff;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Items(
              image: 'lib/Images/Apples.jpg',
              name: 'Apples',
              price: 100,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            Items(
              image: 'lib/Images/Mangoes.jpeg',
              name: 'Mangoes',
              price: 45,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            Items(
              image: 'lib/Images/Grapes.jpg',
              name: 'Grapes',
              price: 80,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            Items(image: 'lib/images/guava.jpg', name: 'Guava', price: 60, amount: '1Kg', onChange: itemChanged,),
            Items(
              image: 'lib/Images/Oranges.jpg',
              name: 'Oranges',
              price: 40,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            Items(
              image: 'lib/Images/Bananas.jpg',
              name: 'Bananas',
              price: 20,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            Items(
              image: 'lib/Images/Tangerine.jpeg',
              name: 'Tangerine',
              price: 30,
              amount: '1Kg',
              onChange: itemChanged,
            ),
            const SizedBox(height: 80,),
          ],
        ),
      ),
      bottomSheet:BuyNowBar(total: widget.cost) ,
    );
  }
}
