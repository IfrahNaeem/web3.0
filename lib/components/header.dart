import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/Pages/home_page.dart';
import 'package:todoapp/components/Contact.dart';
import 'package:todoapp/components/Donation.dart';
import 'package:todoapp/components/Projects.dart';
import 'package:todoapp/components/about.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 340.0,),
            child: Image.asset(
              "assets/images/Logo.png",
              fit: BoxFit.cover,
            ),
          ),

          InkWell(
            onTap: (){
              Get.to(HomePage());
            },
            child:
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Home", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(About());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("About Us", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(Projects());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Projects", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ),

          InkWell(
            onTap: (){
              Get.to(Contact());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Contact Us", style: TextStyle(fontSize: 18.0, color: Colors.black)),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(right: 20.0), // Add padding to the left of the button
            child: ElevatedButton(
              onPressed: () {
                Get.to(Donation());
                print("Donate Now");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent), // Change button color to red
              ),
              child: Text("Donate Now", style: TextStyle(color: Colors.white)),
            ),
          ),



        ],
      ),
    );
  }
}
