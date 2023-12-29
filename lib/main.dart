import 'package:flutter/material.dart';
import 'package:sab_g/Pages/welcome.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'SAB G',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        ),
       debugShowCheckedModeBanner: false,
       home: const WelcomePage (),
      );
  }
}