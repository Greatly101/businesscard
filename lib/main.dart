import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatefulWidget {
  @override
  _BusinessCardState createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/profpic.jpeg'),
              ),
              Text(
                'Nana N. Quartey',
                style: TextStyle(
                    color: Colors.teal[700],
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                        color: Colors.teal[500],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.5),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  //TODO: add other positions(Teacher)
                ],
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal[800],
                  thickness: 2.0,
                ),
              ),
              Card(
                elevation: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+233-0000-000',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                elevation: 15.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'me@email.com',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                elevation: 15.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading:
                      // TODO: add custom github icon
                      //Tab(icon: Icon(MyFlutterApp.linkedin_1)
                      Icon(
                    Icons.account_circle,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Greatly 101',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              //TODO: add another Card Widget for LinkedIn Info
            ],
          ),
        ),
      ),
    );
  }
}
