
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
import 'package:todoapp/util/testimonial_list.dart';
import 'package:todoapp/util/testimonial_text.dart';
import 'package:todoapp/util/volunimage.dart';

import '../util/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final volun_image = [sliderImage6,sliderImage7,sliderImage8,sliderImage9];
  final imageList = [sliderImage1,sliderImage2,sliderImage3,sliderImage4];
  final titleList = [sliderTitle1Text,sliderTitle2Text,sliderTitle3Text,sliderTitle4Text];
  final testimonial_text = [sliderTitle5Text,sliderTitle6Text,sliderTitle7Text];
  final testimonal_list = [sliderImage10,sliderImage11,sliderImage12];
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
                    "assets/images/header_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: size.width,
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
                                child: Text("Need help...",
                                  style: GoogleFonts.sueEllenFrancisco(
                                      color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                                  ),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text("Empowering Womens \nto Reach New Heights",
                                  style: GoogleFonts.shipporiMincho(
                                      color: Colors.white,fontSize: 34.0,fontWeight: FontWeight.bold
                                  ),

                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Breaking Barriers, Building Dreams \n ",
                                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'Roboto', color: Colors.white),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 120.0,top: 0.0),
                          child: Button()),
                    ],
                  ),
                ),
              ]
            ),


                                 // About Us Section


            Container(
              width: 1500,
              height: 500,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, top: 60.0),
                          child: Text(
                            "About Us",
                            style: GoogleFonts.sueEllenFrancisco(
                                color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, top: 10.0,bottom: 10.0),
                          child: Text(
                            "Help To Empower Women,\nOur Main Goals",
                            style: GoogleFonts.shipporiMincho(
                                color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0,right: 130,top: 10.0),
                          child: Text(
                            "EmpowerHer is dedicated to empowering women entrepreneurs by offering comprehensive resources, guidance, and support to launch startups. We address educational gaps and promote health awareness, fostering a community of like-minded individuals passionate about entrepreneurship and social responsibility. Join us in building a brighter future for women in business and beyond",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Roboto'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0, top: 20.0), // Add padding to the left of the button
                          child: ElevatedButton(
                            onPressed: () {
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
                  ),
                  // Our Donation Projects

                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Image.asset(
                              height: 300,
                              width: 500.0,
                              "assets/images/about_images.png",
                              fit: BoxFit.cover,

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),


                            // Our Projects


          Container(
            width: size.width,
            padding: EdgeInsets.only(left: 50.0,right: 10.0,top: 80.0,bottom: 80.0),
            color: Purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Our Projects",
                    style: GoogleFonts.sueEllenFrancisco(
                        color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
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

                                     //How we help

           Row(
             children: [

               Expanded(
                   flex: 2,
                   child: Container(
                     width: 1300,
                     padding: EdgeInsets.only(top: 10.0,bottom: 50.0,left: 70.0,right: 150.0),
                     color: lightPurple,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: EdgeInsets.only(top: 20.0,),
                           child: Text("How we help",
                             style: GoogleFonts.sueEllenFrancisco(
                                 color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.normal
                             ),
                           ),
                         ),
                         // Padding(
                         //   padding: EdgeInsets.only(top: 20.0,),
                         //   child: Text("Join The Community \nTo Empower Women",
                         //     style: GoogleFonts.shipporiMincho(
                         //         color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.normal
                         //     ),
                         //   ),
                         // ),

                         Padding(
                           padding: EdgeInsets.only(top: 20.0,right: 90.0),
                           child: Text("Join our diverse and inclusive community of passionate individuals committed to empowering women through collective action, support networks, and transformative initiatives that create lasting positive change in their lives \nand communities",style: TextStyle(color: Colors.white),
                             textAlign: TextAlign.justify,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20.0),
                           child: Image.asset(
                             height: 280.0,
                             width: 280.0,
                             "assets/images/form.png",fit: BoxFit.cover,

                           ),
                         ),

                         SizedBox(height: 10.0,),

                         Button(),

                       ],
                     ),


                   )
               ),


                              //Become a volunteer Section
               Expanded(
                   flex: 2,
                   child: Container(
                     width: 1300,
                     height: 598,
                     padding: EdgeInsets.only(top: 50.0,bottom: 50.0,left: 0),
                     color: lightPurple,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 30.0),
                           child: Text("Become a Volunteer",
                             style: GoogleFonts.shipporiMincho(
                                 color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 20.0,right: 250.0),
                           child: TextField(
                             controller: nameController,
                             decoration: InputDecoration(
                               hintText: "Full Name*",
                               hintStyle: TextStyle(color: Colors.white),
                             ),
                             style: TextStyle(color: Colors.white),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 20.0,right: 250.0),
                           child: TextField(
                             controller: nameController,
                             decoration: InputDecoration(
                               hintText: "Email Address*",
                               hintStyle: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 20.0,right: 250.0),
                           child: TextField(
                             controller: nameController,
                             decoration: InputDecoration(
                               hintText: "Phone Number*",
                               hintStyle: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20.0,right: 250.0),
                           child: TextField(
                             controller: nameController,
                             decoration: InputDecoration(
                               hintText: "Message*",
                               hintStyle: TextStyle(color: Colors.white),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 50.0),
                           child: ElevatedButton(onPressed: (){
                             print(nameController.text.toString());
                           }, child: Text("Submit Now")),
                         ),


                       ],
                     ),


                   )
               ),
             ],
           ),

                                 //Testimonial Section
            Container(
                width: 1300,
                height: 700,
                color: Colors.white,
              child: Column(
                  children: [
                Padding(
               padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                child: Text(
                     "Testimonial",
                          style: GoogleFonts.sueEllenFrancisco(
                         color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.normal
                  ),
                  ),
                 ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0,bottom: 20.0),
                      child: Text(
                        "What People Says About Us",
                        style: GoogleFonts.shipporiMincho(
                            color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.normal
                        ),
                      ),
                    ),

                      // Testimonial Builder

                    Container(
                      width: size.width,
                      height: 200,
                      margin: EdgeInsets.only(left: 50.0,right: 50.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: _testmonialsDesign
                      ),
                    ),

                                   //Brands Image

                    Container(
                      width: 700,
                      height: 300,
                      child:
                      Image.asset(

                          "assets/images/testimonial_image.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ]
              ),
            ),

                                    //Volunteer Section

            Container(
              width: size.width,
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
                    width: size.width,
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

                       //Footer
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

  Widget _testmonialsDesign(BuildContext context, int index){
    return  Container(
      width: 400,
      height: 200,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(),
      color: Colors.grey.withOpacity(0.3),
      // color: Colors.purpleAccent.withOpacity(0.4),
      child: Row(
        children: [
          Row(

            children: [
              Container(
                color: Colors.purpleAccent.withOpacity(0.4),
                child: Image.asset(
                  testimonal_list[index],
                //  "assets/images/testimonial1.png",
                  fit: BoxFit.cover,


                ),
              )
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 10.0,right: 150.0),
                  child: Text(
                    testimonial_text[index],
                    softWrap: true,
                    style: GoogleFonts.shipporiMincho(
                        color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.only( top: 10.0,right: 160.0),
                  child: Text(
                    "Designer",
                    style: GoogleFonts.shipporiMincho(
                        color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 30.0,left: 10.0),
                  child: Text(
                    "Centuries but also the leap into electronic\n typesetting,established fact that a reader\n will bdistracted the readable content.",
                    style: GoogleFonts.shipporiMincho(
                      color: Colors.black,fontSize: 10.0,fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

              ],

            ),
          ),

        ],

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