import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
        inputDecorationTheme: InputDecorationTheme().copyWith(
            contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            hintStyle: TextStyle(fontSize: 18),
            disabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedErrorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
