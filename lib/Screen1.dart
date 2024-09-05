import 'dart:ui';

import 'package:ebook/Repository/Modelclass/EbookModel.dart';
import 'package:ebook/Screen2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Block/ebook_bloc.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late List<EbookModel> data;

  @override
  void initState() {
    BlocProvider.of<EbookBloc>(context).add(FetchEbook());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
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
                child: BlocBuilder<EbookBloc, EbookState>(
                    builder: (context, state) {
                  if (state is EbookBlocLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is EbookBlocError) {
                    return Center(
                      child: Text("Error"),
                    );
                  }
                  if (state is EbookBlocLoaded) {
                    data = BlocProvider.of<EbookBloc>(context).ebookModel;

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 250 / 400,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Screen2(
                                          image: data[index].imgUrl!.toString(),
                                          title: data[index].title.toString(),
                                          writter:
                                              data[index].authors!.toString(),
                                          page: data[index].pages!.toString(),
                                          language:data[index].language!.toString(),
                                        )));
                          },
                          child: Container(
                            width: 169.w,
                            height: 305.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFFC6E3FF),
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
                                    color: Color(0xFFC6E3FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        bottomRight: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image.network(
                                        data[index].imgUrl!.toString()),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 8),
                                  child: Row(
                                    children: [
                                      SizedBox(width:75,height: 20,
                                        child: Text(
                                          data[index].title.toString(),
                                          style: GoogleFonts.playfair(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Container(
                                        width: 40.w,
                                        height: 16.h,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFF8DF),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star_outlined,
                                                color: Colors.yellow,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                                  child: SizedBox(width:75,height: 10,
                                    child: Text(
                                      data[index].authors!.toString(),
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        color: Color(0xFF505050),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                      Icon(
                                        Icons.arrow_circle_right_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }),
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
