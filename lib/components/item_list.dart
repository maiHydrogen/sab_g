// ignore_for_file: prefer_typing_uninitialized_varia
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:sab_g/components/square_tile.dart';
var cart =FlutterCart();

class Items extends StatefulWidget {
  final String name;
  final String amount;
  final Function onChange;
  final int price;
  // ignore: prefer_typing_uninitialized_variables
  final image;
  const Items({
    required this.image,
    required this.name,
    required this.price,
    required this.amount,
    required this.onChange,
    super.key,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  int count = 0;
  void addItem() {
    setState(() {
      count++;
    });
    widget.onChange(widget.price.toDouble());
  }

  void subtractItem() {
    if (count > 0) {
      setState(() {
        count--;
      });
      widget.onChange(-(widget.price.toDouble()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SquareTile1(imagePath: '${widget.image}'),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Row(
                  children: [
                    const Text('Price:'),
                    const Icon(
                      Icons.currency_rupee_sharp,
                      size: 13,
                    ),
                    Text('${widget.price}'),
                  ],
                ),
                Text('Wieght: ${widget.amount}'),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    FloatingActionButton.small(
                      onPressed: addItem,
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$count',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton.small(
                      onPressed: subtractItem,
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FavoriteButton(
                      isFavorite: false,
                      valueChanged: () {},
                      iconSize: 35,
                    ),
                     IconButton(
                      icon: const Icon(Icons.add_shopping_cart_sharp),
                      onPressed:(){
                        cart.addToCart(productId: widget.name, unitPrice: widget.price,);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
