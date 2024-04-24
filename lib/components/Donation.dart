import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/components/button.dart';
import 'package:todoapp/components/donate_button.dart';
import 'package:todoapp/components/footer.dart';
import 'package:todoapp/components/header.dart';
import 'package:todoapp/util/app_text.dart';
import 'package:todoapp/util/image_path.dart';
import 'package:todoapp/util/volunimage.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
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
                      "assets/images/Project_banner.png",
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
                child: Row(
                  children: [
                    Expanded(
                      child: Container(


                      ),
                    ),




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
