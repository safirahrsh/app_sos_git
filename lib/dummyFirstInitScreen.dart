import 'package:flutter/material.dart';
import 'package:sos_application/main.dart';

import 'dart:async';

class DummyFirstInitScreen extends StatelessWidget {
  const DummyFirstInitScreen({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

  /*Automatically navigates to homepage within 5 secs*/
  Future.delayed(Duration(seconds: 5), () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AppNavBar()));
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
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              Text('Please wait while the application is loading')
            ],
          ),
        ),
      ),
    );
  }
}