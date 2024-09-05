import 'package:ebook/Repository/Modelclass/SummeryModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Block/summery_bloc.dart';
import 'Screen1.dart';

class Screen2 extends StatefulWidget {
  final String image;
  final String title;
  final String writter;
  final String page;
  final String language;

  const Screen2({super.key,
    required this.image,
    required this.title,
    required this.writter,
    required this.page,
    required this.language});

  @override
  State<Screen2> createState() => _Screen2State();

}

class _Screen2State extends State<Screen2> {
  late SummeryModel data1;

  @override
  void initState() {
    BlocProvider.of<SummeryBloc>(context).add(FetchSummery());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
                centerTitle: true,
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
                        widget.title,
                        style: GoogleFonts.playfair(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        widget.writter,
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
                  child: Center(child: Image.network(widget.image)),
                ),
                Positioned(
                  top: 280,
                  left: 10,
                  child: Container(
                    width: 275,
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
                                    widget.language,
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
                                  color: Color(0xFFFFF8DF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Center(
                                  child: Text(
                                    widget.page,
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
            BlocBuilder<SummeryBloc, SummeryState>(
              builder: (context, state) {
    if (state is SummeryBlocLoading) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    if (state is SummeryBlocError) {
    return Center(
    child: Text("Error"),
    );
    }
    if (state is SummeryBlocLoaded) {
    data1 = BlocProvider.of<SummeryBloc>(context).summeryModel;
                return Text(
                  data1.summary!.toString(), style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    )),
                );}else{
      return SizedBox();
    }
              },
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
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_border_sharp,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        width: 200,
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
