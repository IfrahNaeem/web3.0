import 'dart:html';
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
import 'package:todoapp/util/app_text.dart';
import 'package:todoapp/util/color.dart';
import 'package:todoapp/util/image_path.dart';
import 'package:todoapp/util/volunimage.dart';


class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final imageList = [sliderImage1,sliderImage2,sliderImage3,sliderImage4];
  final titleList = [sliderTitle1Text,sliderTitle2Text,sliderTitle3Text,sliderTitle4Text];
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
                                  child: Text("Donation",
                                    style: GoogleFonts.sueEllenFrancisco(
                                        color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Our Projects",
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
              padding: EdgeInsets.only(left: 50.0,right: 10.0,top: 80.0,bottom: 80.0),
              color: Purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(
                      "Our Projects.dart",
                      style: GoogleFonts.sueEllenFrancisco(
                          color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(
                      "You can help lots of people \n by donating little",
                      style: GoogleFonts.shipporiMincho(
                          color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),


                  Container(
                    height: 430,
                    child: ListView.builder(
                        itemCount: imageList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: _buildItems
                    ),
                  ),


                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 500.0,top: 20),
                      child: Center(
                        child: Row(
                          children: [

                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white
                                ),
                                child: InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.arrow_back_ios_new_rounded))),

                            SizedBox(width: 100.0,),

                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white
                                ),
                                child: InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.arrow_forward_ios_rounded))),

                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),

            ),




            footer(),


          ],
        ),

      ),
    );
  }
  Widget _buildItems(BuildContext context,int index){
    return  Container(
      width: 300,
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageList[index],
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              titleList[index],
              softWrap: true,
              style: GoogleFonts.shipporiMincho(
                  color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold

              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Image.asset(
                  "assets/images/Bar.png",
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10.0),
                    child: Text(
                      "Raised -5M",
                      style: GoogleFonts.shipporiMincho(
                          color: Colors.red,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( left:120,top: 10.0),
                    child: Text(
                      "Goal -10M",
                      style: GoogleFonts.shipporiMincho(
                          color: Colors.red,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(right: 160.0,top: 10.0),
                child: Button(),
              ),
            ],
          ),
        ],
      ),

    );

  }
}
