import 'package:flutter/material.dart';
import 'package:sab_g/components/sign_in.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
   final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
              'lib/Images/shopping-cart-with-fruits.jpg',
              height: 250,
              width: 250,
            ),
                const Text('Welcome!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),),
                const SizedBox(height: 5),
                const Text('Shop at your Tap',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),),
                const SizedBox(height: 15),
                const SignIn(),
                const SizedBox(
                  height: 50,
                ),
                 Text('A proud',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),),
                const SizedBox(height: 5),
                const Text(
                  'MAKE IN INDIA',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.greenAccent,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                 Text(
                  'Product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
