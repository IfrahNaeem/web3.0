import 'package:flutter/material.dart';
class Donate_button extends StatelessWidget {
  const Donate_button({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 10.0), // Add padding to the left of the button
      child: ElevatedButton(
        onPressed: () {
          print("Denote Now");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey.shade100), // Change button color to red
        ),
        child: Text("Donation.dart 5000", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}