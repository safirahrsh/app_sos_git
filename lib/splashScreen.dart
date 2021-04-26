import 'package:flutter/material.dart';
import 'package:sos_application/OnBoarding.dart';
import 'dart:async';
// import 'package:sos_application/home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

  /*Automatically redirects to boarding within 5 secs*/
  Future.delayed(Duration(seconds: 5), () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  });

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: queryData.size.width,
          height: queryData.size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 7,
                        blurRadius: 8,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset('assets/img/Icon.png'),
                    borderRadius: BorderRadius.circular(20),
                    )
                    ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text("SOS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),),
                  ),
                  Text("Send emergency messages in one click"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
