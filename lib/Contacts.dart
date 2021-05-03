import 'package:flutter/material.dart';
import 'Widgets/CustomCardBuilder.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return new Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
            right: queryData.size.width * 5 / 100,
            left: queryData.size.width * 5 / 100),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(
                    top: queryData.size.height / 30,
                    bottom: queryData.size.height / 30),
                child: Text(
                  'Emergency Contacts',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: queryData.size.width * 70 / 100,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: queryData.size.height * 25 / 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: queryData.size.height * 2 / 100),
                                child: SizedBox(
                                  height: queryData.size.height * 8 / 100,
                                  width: queryData.size.width * 95 / 100,
                                  child: TextButton(
                                    child: Text(
                                      'Import from contacts',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ))),
                                    onPressed: () {
                                      print("initiate import from contacts");
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: queryData.size.height * 2 / 100),
                                child: SizedBox(
                                  height: queryData.size.height * 8 / 100,
                                  width: queryData.size.width * 95 / 100,
                                  child: TextButton(
                                    child: Text(
                                      'Add contacts manually',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ))),
                                    onPressed: () {
                                      print("initiate add contacts manually");
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ))),
                child: Text(
                  'Add Contacts',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: queryData.size.height * 5 / 100,
                    bottom: queryData.size.height * 5 / 100),
                child: Text(
                  'ME',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            new Contact(
              name: 'Tom Nook',
              phoneNumber: '555-111-222',
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: queryData.size.height * 5 / 100,
                    bottom: queryData.size.height * 5 / 100),
                child: Text(
                  'CONTACTS (0/0)',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ),
            new Contact(
              name: 'John Wack',
              phoneNumber: '555-111-333',
            )
          ],
        ),
      ),
    );
  }
}
