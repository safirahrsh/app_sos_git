import 'package:flutter/material.dart';

class  Contact extends StatelessWidget {
  final String name;
  final String phoneNumber;
  Contact({this.name, this.phoneNumber});


  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData = MediaQuery.of(context);

    return Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: queryData.size.width * 7 / 100,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: queryData.size.width * 10 / 100,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Container(
                    //color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: queryData.size.width * 5 / 100,
                          right: queryData.size.width * 5 / 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: queryData.size.width * 1 / 100,
                                bottom: queryData.size.width * 1 / 100),
                            child: Text(
                              //temp data
                              name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: queryData.size.width * 1 / 100,
                                bottom: queryData.size.width * 1 / 100),
                            child: Text(
                              phoneNumber,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
  }
}



