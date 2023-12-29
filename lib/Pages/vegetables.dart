import 'package:flutter/material.dart';
import 'package:sab_g/components/buynowbar.dart';
import 'package:sab_g/components/item_list.dart';

// ignore: must_be_immutable
class MyVegetables extends StatefulWidget {
  double cost;
   MyVegetables({super.key,required this.cost});

  @override
  State<MyVegetables> createState() => _MyVegetablesState();
}

class _MyVegetablesState extends State<MyVegetables> {
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
            Items(image: 'lib/Images/Ladyfinger.png', name: 'Lady Finger', price: 25,amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Potatoes.jpg', name: 'Potatoes', price: 15,amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Pumpkin.jpg', name: 'Pumpkin', price:40,amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Spinach.jpg', name: 'Spinach', price: 25,amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Brinjal.jpg', name: 'Brinjal', price: 30,amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Carrots.jpg', name: 'Carrots', price: 20, amount: '1Kg',onChange: itemChanged, ),
            Items(image: 'lib/Images/Capsicum.jpeg', name: 'Capsicum',price: 60, amount: '1Kg',onChange: itemChanged, ),
            const SizedBox(height: 80,)
          ],
        ),
      ),
      bottomSheet:BuyNowBar(total: widget.cost),
    );
  }
}
