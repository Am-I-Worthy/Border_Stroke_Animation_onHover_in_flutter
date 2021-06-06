import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hover_animation_box/Component/HoverBox.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverBox(
                child: Text(
                  "Instagram",
                  style: GoogleFonts.nunito(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                height: 60,
                width: 150,
                thickness: 2.0,
                bordercolor: Colors.black,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              ),
              SizedBox(
                width: 25.0,
              ),
              HoverBox(
                child: Icon(AntDesign.instagram),
                height: 60,
                width: 60,
                thickness: 2.0,
                bordercolor: Colors.black,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
