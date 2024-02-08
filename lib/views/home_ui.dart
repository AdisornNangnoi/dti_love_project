// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'SAU Love 2024',
          style: GoogleFonts.kanit(
            color: Colors.white
          ),
          
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      
    drawer: Drawer(),

    );
  }
}