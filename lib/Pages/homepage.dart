import 'package:flutter/material.dart';
import 'package:sab_g/Pages/cart.dart';
import 'package:sab_g/Pages/fruits.dart';
import 'package:sab_g/Pages/vegetables.dart';
import 'package:sab_g/Pages/welcome.dart';
import 'package:sab_g/components/square_tile.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = MyFruits(cost: 0.00,);
      case 1:
        page = MyVegetables(cost: 0.00,);
      case 2:
        page =  MyCart();
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Column(
            children: [
              SafeArea(
                child: Column(
                  children: [
                    AppBar(
                      actions: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: OutlinedButton.icon(
                              onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WelcomePage()),
                                  ),
                              icon: const Icon(Icons.logout),
                              label: const Text('Log out')),
                        ),
                      ],
                      centerTitle: true,
                      title: const Text(
                        'SAB G',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    NavigationBar(
                      destinations: const [
                        NavigationDestination(
                          icon: SquareTile2(imagePath: 'lib/Images/Grapes.jpg'),
                          label: 'Fruits',
                        ),
                        NavigationDestination(
                          icon:
                              SquareTile2(imagePath: 'lib/Images/Potatoes.jpg'),
                          label: 'Vegetables',
                        ),
                        NavigationDestination(
                          icon: Icon(Icons.shopping_cart_sharp,size: 40),
                          label: 'Cart',
                        ),
                      ],
                      selectedIndex: selectedIndex,
                      onDestinationSelected: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
