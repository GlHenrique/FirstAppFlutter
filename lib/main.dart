import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp
  (title: 'Contador',
  home: Home()
  
  
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {

int _count = 0;
String _qtdeLugares = 'Pode Entrar';
  void _alterar(int quantidade) {
    setState(() {
      if (_count >= 10) {
        return _qtdeLugares = 'Lotado xampis';
      }
     _count += quantidade;
     if (_count < 0) {
       _qtdeLugares = 'Valor inválido';
     } else {
       if (_count >= 0 && _count <= 10) {
         _qtdeLugares = 'Pode entrar cumpadi';
       } else {
         _qtdeLugares = 'Lotado xampis';
       }
     }
    });
  }



  String imageSrc = 'https://img.xda-cdn.com/ANmUiK-hguUfScsEPitgcfEBUa4=/http%3A%2F%2Fi43.tinypic.com%2Fk0q72a.jpg';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(imageSrc, fit: BoxFit.cover, height: 1080),
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
        "$_count pessoas",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: FlatButton(
                child: Text(
                  '+ 1',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                ), onPressed: ()  {
                  _alterar(1);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: FlatButton(
                child: Text(
                  '- 1',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                ), onPressed: ()  {
                  _alterar(-1);
                },
              ),
            ),
            
          ],
          ),
          Text(
            _qtdeLugares,
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              fontStyle: FontStyle.italic
            ),
          )
      ],
    )
      ],
    ); 
  }
}
