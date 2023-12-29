import 'package:flutter/material.dart';
import 'package:sab_g/Pages/homepage.dart';

class BuyNowBar extends StatelessWidget {
  final double total;
  const BuyNowBar({
    super.key,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 255, 191, 0.601),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Total:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Icon(
                Icons.currency_rupee_sharp,
                size: 20,
              ),
              Text(
                "$total",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              if (total != 00.00) {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    title: Text('Order Placed'),
                    content:
                        Text('Thanks for placing order. Keep shopping more.'),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    title: Text('Ordert Not Placed'),
                    content: Text('Please add some items first.'),
                  ),
                );
              }
            },
            icon: const Icon(Icons.shopping_bag_outlined),
            label: const Text('Buy Now'),
          )
        ],
      ),
    );
  }
}

class OrderBar extends StatelessWidget {
  final double total;
  const OrderBar({
    super.key,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 255, 191, 0.601),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            
            children: [
              const Text(
                "Total:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Icon(
                Icons.currency_rupee_sharp,
                size: 20,
              ),
              Text(
                "$total",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              if (total != 00.00) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Order Placed'),
                    content: const Text(
                        'Thanks for placing order. Keep shopping more.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
                                (route) => false),
                        child: const Text('Continue'),
                      ),
                    ],
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Ordert Not Placed'),
                    content: const Text('Please add some items in cart.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
                                (route) => false),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              }
            },
            icon: const Icon(Icons.shopping_bag_outlined),
            label: const Text('Place Order'),
          ),
        ],
      ),
    );
  }
}
