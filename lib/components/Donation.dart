import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/components/button.dart';
import 'package:todoapp/components/donate_button.dart';
import 'package:todoapp/components/footer.dart';
import 'package:todoapp/components/header.dart';
import 'package:todoapp/text_widget.dart';
import 'package:todoapp/util/app_text.dart';
import 'package:todoapp/util/image_path.dart';
import 'package:todoapp/util/volunimage.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {

  var nameControler = TextEditingController();
  var cardNumberController = TextEditingController();
  var expireController = TextEditingController();
  var cvvController = TextEditingController();

  var defaultHeight = 10.0;

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
                      "assets/images/Project_banner.webp",
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
                                  child: Text("Donate",
                                    style: GoogleFonts.sueEllenFrancisco(
                                        color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Donate Now",
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
            Container(
                width: 1300,
                height: 600,
                color: Colors.white,
                padding: EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextWidget(text: "Payment Details", size: 18.0,color: Colors.black,),
                    SizedBox(height: defaultHeight,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,right: 250),
                      child: TextField(
                        controller: nameControler,
                        decoration: InputDecoration(
                          hintText: "Enter Name Card",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),

                    SizedBox(height: defaultHeight,),
                    TextWidget(text: "Card Number", size: 18.0,color: Colors.black,),
                    SizedBox(height: defaultHeight,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,right: 250),
                      child: TextField(
                        controller: cardNumberController,
                        decoration: InputDecoration(
                          hintText: "Card Number",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),

                    SizedBox(height: defaultHeight,),
                    Row(
                      children: [

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(text: "Expiration", size: 18.0,color: Colors.black,),
                              SizedBox(height: defaultHeight,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,right: 250),
                                child: TextField(
                                  controller: expireController,
                                  decoration: InputDecoration(
                                    hintText: "Expiration",
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(text: "CVV", size: 18.0,color: Colors.black,textAlignment: TextAlign.start,),
                              SizedBox(height: defaultHeight,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,right: 250),
                                child: TextField(
                                  controller: cvvController,
                                  decoration: InputDecoration(
                                    hintText: "CVV",
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50.0,),

                    ElevatedButton(onPressed: (){
                      var id = FirebaseFirestore.instance.collection("donation").doc().id;
                      FirebaseFirestore.instance.collection("donation").doc(id).set({
                        "name" : nameControler.text.toString(),
                        "number" : cardNumberController.text.toString(),
                        "expire" : expireController.text.toString(),
                        "cvv" : cvvController.text.toString(),
                      }).whenComplete(() {
                        Get.snackbar("Payment Send Completed","Thanks for your donation");
                      });
                    }, child: Text("Donate")),

                  ],
                )
            ),


            footer(),


          ],
        ),

      ),
    );
  }

}
