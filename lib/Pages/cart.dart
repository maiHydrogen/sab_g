import 'package:flutter/material.dart';
import 'package:sab_g/components/item_list.dart';
import 'package:sab_g/components/buynowbar.dart';

class MyCart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  double total = cart.getTotalAmount();

  int itemcount = cart.getCartItemCount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Items in Cart',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text('Total Items in cart are - $itemcount',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center),
                    
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            OrderBar(total: total),
          ],
        ),
      ),
    );
  }
}
