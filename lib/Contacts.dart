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
                onPressed: () {},
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
            Contact(
              name: 'John Wack',
              phoneNumber: '555-111-dead',
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
            Contact(
              name: 'John Wack',
              phoneNumber: '555-111-dead',
            )
          ],
        ),
      ),
    );

    
  }
}

