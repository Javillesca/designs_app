import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _widgetImage(),
              _widgetTitle(),
              _widgetActions(),
              _widgetText(),
              _widgetText(),
              _widgetText(),
              _widgetText()
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetImage() {
    return Image(
        image: NetworkImage('https://silversea-h.assetsadobe2.com/is/image/content/dam/silversea-com/ports/m/malaga/silversea-mediterranean-cruise-malaga-spain-2.jpg?hei=390&wid=930&fit=crop'),
        fit: BoxFit.cover
    );
  }

  Widget _widgetTitle() {
    return SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Málaga centro", style: styleTitle),
                        SizedBox(height: 7.0),
                        Text("Puerto, plaza de toros", style: styleSubtitle),
                      ],
                    )
                ),
                Icon(Icons.star, color: Colors.red, size: 30.0),
                Text('41', style: TextStyle(fontSize: 20.0) )
              ],
            )
        )
    );
  }

  Widget _widgetActions() {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _widgetOptions(Icons.call, 'CALL'),
          _widgetOptions(Icons.near_me, 'ROUTE'),
          _widgetOptions(Icons.share, 'Share'),
        ],
      );
  }

  Widget _widgetOptions(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _widgetText(){
    return SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              'Lorem fistrum no puedor mamaar va usté muy cargadoo. Ese hombree ahorarr a gramenawer diodenoo. De la pradera caballo blanco caballo negroorl tiene musho peligro papaar papaar diodeno. Jarl hasta luego Lucas caballo blanco caballo negroorl está la cosa muy malar condemor. Diodenoo la caidita condemor caballo blanco caballo negroorl a peich a gramenawer te voy a borrar el cerito. Sexuarl la caidita fistro ese pedazo de a peich. De la pradera te voy a borrar el cerito de la pradera a peich amatomaa caballo blanco caballo negroorl llevame al sircoo fistro benemeritaar. Ese que llega por la gloria de mi madre por la gloria de mi madre jarl sexuarl benemeritaar mamaar te va a hasé pupitaa.',
              textAlign: TextAlign.justify,
            )
        )
    );
  }
}
