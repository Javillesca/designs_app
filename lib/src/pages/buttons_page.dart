import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';


class ButtonsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _title(),
                _roundedButtons()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.7),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final PinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]
            ),
            color: Colors.pink
        )
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
            top: -100,
            child: PinkBox
        )
      ],
    );
  }

  Widget _title() {
    final titleStyle = TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold);
    final textStyle = TextStyle(fontSize: 18.0, color: Colors.white);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',style: titleStyle),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: textStyle)
          ],
        ),
      )
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0),
              title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container()
          ),
        ]
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
            children: [
              _roundedButton(Colors.blue, Icons.border_all, 'General'),
              _roundedButton(Colors.pink, Icons.directions_bus, 'Bus')
            ]
        ),
        TableRow(
            children: [
              _roundedButton(Colors.pinkAccent, Icons.shop, 'Buy'),
              _roundedButton(Colors.orange, Icons.insert_drive_file, 'File')
            ]
        ),
        TableRow(
            children: [
              _roundedButton(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
              _roundedButton(Colors.green, Icons.cloud, 'Grocery')
            ]
        ),
        TableRow(
            children: [
              _roundedButton(Colors.red, Icons.collections, 'Photos'),
              _roundedButton(Colors.teal, Icons.help_outline, 'Help')
            ]
        ),
      ],
    );
  }

  Widget _roundedButton(Color color, IconData icon, String text) {
    return ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
              height: 180.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 35.0,
                    child: Icon( icon, color: Colors.white, size: 30.0),
                  ),
                  Text(text, style: TextStyle(color: color ))
                ],
              )
          ),
        )
    );
  }
}
