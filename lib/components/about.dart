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
import '../util/color.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final volun_image = [sliderImage6,sliderImage7,sliderImage8,sliderImage9];
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
                        "assets/images/About_image.png",
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
                                    child: Text("What we do...",
                                      style: GoogleFonts.sueEllenFrancisco(
                                          color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text("About our \nOrganization",
                                      style: GoogleFonts.shipporiMincho(
                                          color: Colors.white,fontSize: 34.0,fontWeight: FontWeight.bold
                                      ),

                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 120.0,top: 30.0),
                              child: Button()),
                        ],
                      ),
                    ),

                  ]
              ),
              Container(
                  width: 1300,
                  height: 500,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Image.asset(
                                    height: 300,
                                    width: 500.0,
                                    "assets/images/about_us.png",
                                    fit: BoxFit.cover,

                                  ),
                                ),
                              ],

                            )


                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 100.0,right: 550.0),
                                child: Text(
                                  "About Us",
                                  style: GoogleFonts.sueEllenFrancisco(
                                      color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10.0,bottom: 20.0,right: 350.0),
                                child: Text(
                                  "Help To Empower Women,\nOur Main Goals",
                                  style: GoogleFonts.shipporiMincho(
                                      color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,bottom: 20.0,right: 350.0),
                                child: Text(
                                  "EmpowerHer  dedicated to empowering women entrepreneurs by offering comprehensive resources, guidance,and support to launch startups. ",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10.0,bottom: 20.0,right: 492.0),
                                child: Button(),
                              ),
                            ],

                          )




                        ),
                      ),




                    ],
                  )
              ),
              Container(
                  width: 1300,
                  height: 600,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 10.0,right: 450.0),
                                  child: Text(
                                    "Our Goal",
                                    style: GoogleFonts.sueEllenFrancisco(
                                        color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0, top: 10.0,bottom: 0.0,right: 200.0),
                                  child: Text(
                                    "Our goals revolve around empowering women through education and entrepreneurship, while advocating for gender equality and fostering supportive communities.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 160.0),
                                  child: Container(
                                    width: 330,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 0,top: 30.0),
                                      child: Image.asset(

                                        "assets/images/Tags.png",
                                        fit: BoxFit.contain,

                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0, top: 30.0,bottom: 0.0,right: 220.0),
                                  child: Text(
                                    "We aim to provide access to quality learning opportunities and mentorship, enabling women to succeed in both personal and professional spheres",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                              ],

                            )


                        ),
                      ),
                      Expanded(
                        child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 10.0,right: 400.0),
                                  child: Text(
                                    "Mission",
                                    style: GoogleFonts.sueEllenFrancisco(
                                        color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0, top: 10.0,bottom: 20.0,right: 200.0),
                                  child: Text(
                                    "Our mission is to empower women through education, entrepreneurship, advocacy, and community building, fostering their full potential and advancing gender equality",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,right: 150.0),
                                  child: Image.asset(
                                    height: 300,
                                    width: 300.0,
                                    "assets/images/vision.png",
                                    fit: BoxFit.cover,

                                  ),
                                ),

                              ],

                            )




                        ),
                      ),




                    ],
                  )
              ),
              Container(
                  width: 1300,
                  height: 600,
                  color: LightGrey,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                        child: Text(
                          "Team",
                          style: GoogleFonts.sueEllenFrancisco(
                              color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10.0,bottom: 20.0),
                        child: Text(
                          "Meet our Volunteer",
                          style: GoogleFonts.shipporiMincho(
                              color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal
                          ),
                        ),
                      ),


                      Container(
                        width: 1200,
                        height: 380.0,
                        margin: EdgeInsets.only(left: 200),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: _VolunteerDesign
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
  Widget _VolunteerDesign(BuildContext context, int index) {
    return Container(
      width: 200,
      height: 350,
      color: Colors.white,
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Image.asset(
            volun_image[index],
            //  "assets/images/Volunteer2.png",
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              "Keira Knightley",
              style: GoogleFonts.shipporiMincho(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Icon(
                    Icons.facebook
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                    Icons.facebook
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                    Icons.facebook
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
