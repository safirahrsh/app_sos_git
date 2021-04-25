import 'package:flutter/material.dart';

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
              height: queryData.size.width / 10,
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
            width: queryData.size.width / 2,
            height: queryData.size.width / 2,
            child: FlatButton(
              onPressed: () {},
              color: Colors.red,
              shape: CircleBorder(),
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
              height: queryData.size.width / 10,
              child: Text(
                'Emergency Call',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(queryData.size.width*1/100,queryData.size.height*1/100,queryData.size.width*1/100,queryData.size.height*1/100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: queryData.size.width / 2.5,
                  height: queryData.size.width / 3,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Polisi',
                        style: TextStyle(color: Colors.red),
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
                  width: queryData.size.width / 2.5,
                  height: queryData.size.width / 3,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Ambulans',
                        style: TextStyle(color: Colors.red),
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
            padding: EdgeInsets.fromLTRB(queryData.size.width*1/100,queryData.size.height*1/100,queryData.size.width*1/100,queryData.size.height*1/100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: queryData.size.width / 2.5,
                  height: queryData.size.width / 3,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Damkar',
                        style: TextStyle(
                          color: Colors.red,
                        ),
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
                  width: queryData.size.width / 2.5,
                  height: queryData.size.width / 3,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Emergency Contact',
                        style: TextStyle(color: Colors.red),
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
