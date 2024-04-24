import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 10.0), // Add padding to the left of the button
      child: ElevatedButton(
        onPressed: () {
          print("Donate Now");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.redAccent), // Change button color to red
        ),
        child: Text("Donate Now", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
