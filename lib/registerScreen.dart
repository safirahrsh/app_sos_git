import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sos_application/main.dart';

class RegisterNumber extends StatefulWidget {
  @override
  _RegisterNumberState createState() => _RegisterNumberState();
}

class _RegisterNumberState extends State<RegisterNumber> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: queryData.size.height * 1 / 100,
                  top: queryData.size.height * 1 / 100),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: queryData.size.height * 2 / 100,
                        bottom: queryData.size.height * 2 / 100,
                      ),
                      child: Text(
                        'Enter your number to get started',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: queryData.size.height * 1 / 100,
                          bottom: queryData.size.height * 1 / 100,
                          right: queryData.size.width * 4 / 100,
                          left: queryData.size.width * 4 / 100),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            labelText: 'Name',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: queryData.size.height * 1 / 100,
                          bottom: queryData.size.height * 1 / 100,
                          right: queryData.size.width * 4 / 100,
                          left: queryData.size.width * 4 / 100),
                      child: Container(
                        child: TextField(
                          //keyboardType and inputFormatters for numbers only
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            labelText: 'Phone Number',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 7,
                        blurRadius: 8,
                        offset: Offset(0, 8),
                      ),
                    ]),
                height: queryData.size.height * 50 / 100,
                width: queryData.size.width * 90 / 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: queryData.size.height * 1 / 100,
                  top: queryData.size.height * 1 / 100),
              child: SizedBox(
                height: queryData.size.height * 8 / 100,
                width: queryData.size.width * 65 / 100,
                child: TextButton(
                  onPressed: () {
                    //Navigates to Home screen. Point of no return.
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AppNavBar()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )),
                  child: Text(
                    'Register Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
