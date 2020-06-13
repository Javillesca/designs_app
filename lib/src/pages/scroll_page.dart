import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageIntro(),
          _pageDetail()
        ],
      )
    );
  }

  Widget _pageIntro() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImg(),
        _dataInfo()
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0)
    );
  }

  Widget _backgroundImg() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/original.png'),
          fit: BoxFit.cover
        )
    );
  }

  Widget _dataInfo(){
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
        child: Column(
          children: <Widget>[
            Text('11º',style: textStyle),
            Text('Sabado',style: textStyle),
            Expanded(
              child: Container(),
            ),
            Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
          ],
        )
    );
  }

  Widget _pageDetail() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0))
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
