import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/components/footer.dart';
import 'package:todoapp/components/header.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Header(),
            Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500.0,
                    color: Colors.deepOrange,
                    child: Image.asset(
                      "assets/images/Contact_image.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 1300,
                    height: 400.0,
                    margin: EdgeInsets.only(left: 60.0,right: 60.0,top: 50.0,bottom: 0.0),
                    color: Colors.grey[2],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 80.0, top: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 80.0,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Contact",
                                    style: GoogleFonts.sueEllenFrancisco(
                                        color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Get in Touch",
                                    style: GoogleFonts.shipporiMincho(
                                        color: Colors.white,fontSize: 34.0,fontWeight: FontWeight.bold
                                    ),

                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ]
            ),
            Row(
              children: [

                Expanded(
                    flex: 2,
                    child: Container(
                      width: 1300,
                      padding: EdgeInsets.only(bottom: 10.0,left: 70.0,right: 150.0),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Text("Contact",
                              style: GoogleFonts.sueEllenFrancisco(
                                  color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0,),
                            child: Text("Get in touch with us",
                              style: GoogleFonts.shipporiMincho(
                                  color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20.0,right: 50.0),
                            child: Text("Lorem Ipsum is simply dummy text of the printin typesetting  dummy text ever  when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Image.asset(
                              height: 300,
                              width: 300.0,
                              "assets/images/Contact_image.png",fit: BoxFit.cover,

                            ),
                          ),

                         // Button(),

                        ],
                      ),


                    )
                ),


                //Become a volunteer Section
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 1300,
                      height: 675,
                      padding: EdgeInsets.only(top: 50.0,bottom: 50.0,left: 0),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("Contact Us Now",
                              style: GoogleFonts.shipporiMincho(
                                  color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,right: 250),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "Full Name*",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,right: 250),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Email Address*",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,right: 250),
                            child: TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: "Phone Number*",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,right: 250),
                            child: TextField(
                              controller: messageController,
                              decoration: InputDecoration(
                                hintText: "Message*",
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: ElevatedButton(onPressed: (){
                              // print(nameController.text.toString());
                              FirebaseFirestore.instance.collection("contact").doc()
                                  .set({
                                  "name" : nameController.text.toString(),
                                  "email" : emailController.text.toString(),
                                  "phone" : phoneController.text.toString(),
                                  "message" : messageController.text.toString(),
                              }).whenComplete(() {
                                Get.snackbar("Thanks for your contact","");
                              });
                            }, child: Text("Submit Now")),
                          ),


                        ],
                      ),


                    )
                ),
              ],
            ),


            footer(),


          ],
        ),

      ),
    );
  }

}
