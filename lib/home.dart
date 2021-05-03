import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return new Scaffold(
        body: SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: queryData.size.height * 5 / 100,
              //color: Colors.grey,
              child: Text(
                'Send SOS Messages',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: queryData.size.width * 50 / 100,
            height: queryData.size.height * 25 / 100,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape:
                      MaterialStateProperty.all<CircleBorder>(CircleBorder())),
              child: Text(
                'SOS',
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: queryData.size.height * 10 / 100,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Emergency Call',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width * 1 / 100,
                queryData.size.height * 1 / 100,
                queryData.size.width * 1 / 100,
                queryData.size.height * 1 / 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: queryData.size.width * 40 / 100,
                  height: queryData.size.height * 20 / 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Polisi',
                                style: TextStyle(color: Colors.red),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset("assets/img/icon_polri.png",
                                    height: 28)
                              ]),
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      )),
                ),
                SizedBox(
                  width: queryData.size.width * 40 / 100,
                  height: queryData.size.height * 20 / 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Ambulans',
                                style: TextStyle(color: Colors.red),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FaIcon(FontAwesomeIcons.ambulance,
                                    color: Colors.red)
                              ]),
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width * 1 / 100,
                queryData.size.height * 1 / 100,
                queryData.size.width * 1 / 100,
                queryData.size.height * 1 / 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: queryData.size.width * 40 / 100,
                  height: queryData.size.height * 20 / 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Damkar',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FaIcon(FontAwesomeIcons.fireExtinguisher,
                                  color: Colors.red),
                            ],
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      )),
                ),
                SizedBox(
                  width: queryData.size.width * 40 / 100,
                  height: queryData.size.height * 20 / 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Emergency\nContact',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.red),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FaIcon(FontAwesomeIcons.userCheck, color: Colors.red)]),
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
