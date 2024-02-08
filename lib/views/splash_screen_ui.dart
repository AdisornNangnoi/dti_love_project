// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dti_love_project/views/introduction_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {

  @override
  void initState() {
    //หน่วง3วิแล้วไปหน้าIntroduction
    Future.delayed(
      //เวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      //ครบแล้วทำอะไร
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUi()
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'DTI Love 2024',
                  style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'WOW WOW WOW',
                  style: GoogleFonts.kanit(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40.0,
                ),
                CircularProgressIndicator(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Create by : Adisorn Nangnoi',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Southeast Asia University',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Copyright ©️DTI ❤️❤️❤️',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                )
              ],
            )
          )
        ],  
      ),
    );
  }
}
