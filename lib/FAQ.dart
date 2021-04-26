import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return new Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
            right: queryData.size.width * 5 / 100,
            left: queryData.size.width * 5 / 100),
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: queryData.size.height * 7 / 100,
                  bottom: queryData.size.height * 7 / 100),
              child: Text(
                'Help and FAQ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'HELP',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: queryData.size.height * 2 / 100,
                  bottom: queryData.size.height * 2 / 100),
              child: Container(
                width: queryData.size.width,
                height: queryData.size.height * 20 / 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: queryData.size.height * 1 / 100,
                        bottom: queryData.size.height * 1 / 100,
                        right: queryData.size.width * 2 / 100,
                        left: queryData.size.width * 2 / 100,
                      ),
                      child: SizedBox(
                        width: queryData.size.width * 40 / 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Help 1',
                              style: TextStyle(color: Colors.red),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shadowColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: queryData.size.height * 1 / 100,
                        bottom: queryData.size.height * 1 / 100,
                        right: queryData.size.width * 2 / 100,
                        left: queryData.size.width * 2 / 100,
                      ),
                      child: SizedBox(
                        width: queryData.size.width * 40 / 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Help 2',
                              style: TextStyle(color: Colors.red),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shadowColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: queryData.size.height * 1 / 100,
                        bottom: queryData.size.height * 1 / 100,
                        right: queryData.size.width * 2 / 100,
                        left: queryData.size.width * 2 / 100,
                      ),
                      child: SizedBox(
                        width: queryData.size.width * 40 / 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Help 3',
                              style: TextStyle(color: Colors.red),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shadowColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'FREQUENTLY ASKED QUESTION',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: ExpansionTile(
                      title: Text(
                        'Question 1',
                        style: TextStyle(fontSize: 15),
                      ),
                      children: [
                        Container(
                          height: queryData.size.height * 8 / 100,
                          child: Align(
                            child: Text(
                              'Answer 1',
                              style: TextStyle(fontSize: 15),
                            ),
                            alignment: Alignment.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text(
                        'Question 2',
                        style: TextStyle(fontSize: 15),
                      ),
                      children: [
                        Container(
                          height: queryData.size.height * 8 / 100,
                          child: Align(
                            child: Text(
                              'Answer 2',
                              style: TextStyle(fontSize: 15),
                            ),
                            alignment: Alignment.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text(
                        'Question 3',
                        style: TextStyle(fontSize: 15),
                      ),
                      children: [
                        Container(
                          height: queryData.size.height * 8 / 100,
                          child: Align(
                            child: Text(
                              'Answer 3',
                              style: TextStyle(fontSize: 15),
                            ),
                            alignment: Alignment.center,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
