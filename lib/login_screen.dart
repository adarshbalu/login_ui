import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/button.dart';
import 'package:login_ui/screen_size.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenInfo screenInfo = ScreenInfo.fromContext(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/component.png',
                height: screenInfo.height / 11,
                width: screenInfo.width / 6,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Sync',
                  style: GoogleFonts.quicksand()
                      .copyWith(fontSize: 60, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'the meeting app',
                style: TextStyle(fontSize: 21),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: screenInfo.width / 9),
                child: TextFormField(
                  decoration: InputDecoration().copyWith(
                    hintText: 'Email Address',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: screenInfo.width / 9),
                child: TextFormField(
                  decoration: InputDecoration().copyWith(
                    hintText: 'Password',
                  ),
                ),
              ),
              CustomButton(
                width: screenInfo.width / 1.3,
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffEF5A53), Color(0xffF48348)]),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 8.0, bottom: screenInfo.height / 20),
                child: Text(
                  'Forgot password',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Text('Create a new account',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
            ],
          ),
        ),
      ),
    );
  }
}
