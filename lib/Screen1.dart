import 'dart:ui';

import 'package:ebook/Screen2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Color> colors = [
    Color(0xFFC6E3FF),
    Color(0xFFF7C083),
    Color(0xFFFFC2BD),
    Color(0xFFC6E3FF),
    Color(0xFFF5E9BC),
    Color(0xFFF7C083),
    Color(0xFFFFC2BD),
    Color(0xFFC6E3FF)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Row(
                children: [
                  Text(
                    'Book ',
                    style: GoogleFonts.playfair(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Junction',
                    style: GoogleFonts.playfair(
                      textStyle: TextStyle(
                        color: Color(0xFFD1618A),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                Icon(
                  Icons.notifications_none,
                  size: 40,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 1200.h,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 250 / 400,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: colors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(onTap:(){Navigator.push(context,MaterialPageRoute(builder: (_)=>Screen2()));},
                      child: Container(
                        width: 169.w,
                        height: 305.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 169.w,
                              height: 158.h,
                              decoration: ShapeDecoration(
                                color: colors[index],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image.asset("assets/a.png",),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 8),
                              child: Row(
                                children: [
                                  Text(
                                    'The Wolf Den',
                                    style: GoogleFonts.playfair(
                                      textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      )
                                    ),
                                  ),SizedBox(width: 15.w,),
                                  Container(
                                    width: 40.w,
                                    height: 16.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFF8DF),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_outlined,color: Colors.yellow,size: 15,),
                                          SizedBox(width: 3.w,),
                                          Text(
                                            '4.0',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              )
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text(
                                'Elodie Harper',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                  color: Color(0xFF505050),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$6.99',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_circle_right_outlined,color: Colors.black,size: 30,)],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// image: DecorationImage(
//   image: AssetImage("assets/a.png"),
//   fit: BoxFit.cover,
// ),
