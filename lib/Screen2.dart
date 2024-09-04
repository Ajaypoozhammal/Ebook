import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
                leading: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Screen1()));
                        },
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 40,
                        )),
                  ],
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Text(
                        'One Dark Window',
                        style: GoogleFonts.playfair(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        'Rachel Gillig',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 300.h,
                  color: Colors.white,
                  child: Center(
                      child: Image.asset(
                    "assets/a.png",
                  )),
                ),
                Positioned(
                  top: 280,
                  left: 30,
                  child: Container(
                    width: 295,
                    height: 54,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 50,
                          offset: Offset(0, 24),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.w,
                          height: 30.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFF8DF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                                size: 25,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                '4.0',
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                width: 70.w,
                                height: 30.h,
                                decoration: ShapeDecoration(
                                  color: Colors.cyan,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Fantasy',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xFF153337),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                width: 70.w,
                                height: 30.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Center(
                                  child: Text(
                                    '432 Pages',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xFF153337),
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 250),
              child: Text(
                'Synopsis',
                style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Elspeth needs a monster. The monster might be her. Elspeth Spindle needs more than luck to stay safe in the eerie, mist-locked kingdom of Blunder—she needs a monster. She calls him the Nightmare, an ancient, mercurial spirit trapped in her head. He protects her. He keeps her secrets.\n \nBut nothing comes for free, especially magic. When Elspeth meets a mysterious highwayman on the forest road, her life takes a drastic turn. Thrust into a world of shadow and deception, she joins a dangerous quest to cure Blunder from the dark magic infecting it. And the highwayman? He just so happens to be the King’s nephew, Captain of the most dangerous men in Blunder…and guilty of high treason.\n\nTogether they must gather twelve Providence Cards—the keys to the cure. But as the stakes heighten and their undeniable attraction intensifies, Elspeth is forced to face her darkest secret yet: the Nightmare is slowly taking over her mind. And she might not be able to stop him.',
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              )),
            ),
            Container(
              width: 393,
              height: 80,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 40,
                    offset: Offset(0, -3),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 25,backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 24,backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_border_sharp,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        width: 250,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Color(0xFF404066),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Buy Now',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
