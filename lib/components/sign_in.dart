import 'package:flutter/material.dart';
import 'package:sab_g/Pages/homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius:const BorderRadius.all(Radius.circular(10)),
        color: Colors.grey.shade300),
      width: 300,
      height: 250,
        child: Column(
          children: [
            const SizedBox(height: 5,),
            const Text('Sign in with your Credentials',
             style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: TextEditingController(),
              hintText: 'Username or Email',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: TextEditingController(),
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(
                  context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) =>   const MyHomePage()),
                  (route)=> false,
                ),
                  
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 67, 255, 161),),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  ),
                  child: const Text('Skip',
                  style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
                ),
                const SizedBox(width: 10),
               ElevatedButton(
                  onPressed: () => Navigator.of(
                  context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) =>  const MyHomePage()),
                  (route)=>false,
                ),
                  
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 67, 255, 161),),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  ),
                  child: const Text('Sign In',
                  style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
