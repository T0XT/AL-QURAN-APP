import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home screen.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 43, 59),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          //this first latter
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              //this stally first latter
              children: [
                Text(
                  "القران الكريم\n AL QOURAN AL KAREEM",
                  style: (GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber),
                    height: 10,
                    width: 300,
                    // color: Colors.amber,
                    //child: Padding(
                    //  padding: const EdgeInsets.all(8.0),
                    // child: Text(
                    //   "تعلم القران الكريم\n و الاستماع له كل يوم",
                    //   style: GoogleFonts.poppins(
                    //     color: Color.fromARGB(225, 113, 241, 120),
                    //     fontSize: 18,
                    //    fontWeight: FontWeight.bold,
                    //  ),
                    //  textAlign: TextAlign.center,
                    // ),
                    // ),
                  ),
                ]),
                SizedBox(
                  height: 18,
                ),
                //COUNT FOR THE IMGES
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 350,
                      // width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 79, 53, 114)),

                      child: SvgPicture.asset(
                          "assest/asset/first_logo_spalshscreen.svg"),
                    ),
                    //control th h butoom
                    Positioned(
                      left: 0,
                      bottom: -20,
                      right: 0,
                      child: Center(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => homepage()));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 16),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 193, 21),
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "get started",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
