import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip App", 
        style: GoogleFonts.spaceGrotesk(
        fontWeight: FontWeight.bold, 
        fontSize: 16.0,
        color: Colors.white,)
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 20.0,
      ),
    );
  }
}
