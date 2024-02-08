// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUi extends StatefulWidget {
  const IntroductionUi({super.key});

  @override
  State<IntroductionUi> createState() => _IntroductionUiState();
}

class _IntroductionUiState extends State<IntroductionUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: IntroductionScreen(
        autoScrollDuration: 2000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                'CAR 001',
                style: GoogleFonts.kanit(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
              image: Image.asset('assets/images/car1.jpg'),
              bodyWidget: Text(
                'AAA BBB CCCC\n DDDDD EEEEEEE\nEEEEEEEEEEEEE',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(),
              )),
          PageViewModel(
              titleWidget: Text(
                'CAR 002',
                style: GoogleFonts.kanit(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
              image: Image.asset('assets/images/car2.jpg'),
              bodyWidget: Text(
                'AAA BBB CCCC\n DDDDD EEEEEEE\nEEEEEEEEEEEEE',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(),
              )),
          PageViewModel(
              titleWidget: Text(
                'CAR 003',
                style: GoogleFonts.kanit(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
              image: Image.asset('assets/images/car3.jpg'),
              bodyWidget: Text(
                'AAA BBB CCCC\n DDDDD EEEEEEE\nEEEEEEEEEEEEE',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(),
              )),
          PageViewModel(
              titleWidget: Text(
                'CAR 004',
                style: GoogleFonts.kanit(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
              image: Image.asset('assets/images/car4.jpg'),
              bodyWidget: Text(
                'AAA BBB CCCC\n DDDDD EEEEEEE\nEEEEEEEEEEEEE',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(),
              )),
          PageViewModel(
              titleWidget: Text(
                'CAR 005',
                style: GoogleFonts.kanit(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
              image: Image.asset('assets/images/car5.jpg'),
              bodyWidget: Text(
                'AAA BBB CCCC\n DDDDD EEEEEEE\nEEEEEEEEEEEEE',
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(),
              ))
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(),
        ),
        onSkip: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeUi())),
        dotsDecorator: DotsDecorator(
            size: Size(
              MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025,
            ),
            color: Colors.grey,
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.055,
              MediaQuery.of(context).size.width * 0.025,
            ),
            activeColor: Colors.purple,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ))),
        next: Icon(Icons.arrow_forward),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(),
        ),
        onDone: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeUi())),
      ),
    );
  }
}
