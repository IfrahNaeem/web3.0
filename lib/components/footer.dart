import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/color.dart';
class footer extends StatelessWidget {
  const footer({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: 1300,
          height: 200,
          color: DarkPurple,
          child: Container(
            margin: EdgeInsets.only(left: 10.0,top: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Image.asset(
                    "assets/images/Logo2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 10),
                  child: Text(
                    "Home    About us   Events   Pages   Contact us ",
                    style: GoogleFonts.shipporiMincho(
                        color: Colors.white,fontSize: 12.0,fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                Container(

                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: Image.asset(
                      "assets/images/icons.png",
                      width: 300,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

              ],
            ),
          ),
        );



  }
}
