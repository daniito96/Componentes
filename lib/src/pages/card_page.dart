import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.folder_open, color: Colors.blue),
            title: Text('Titulo de tarjeta'),
            subtitle: Text(
                'Esta es la descripcion de esta nueva tarjeta, esta es la primera vez que trabajamos en este curso con Cards'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
         FadeInImage(
           image: NetworkImage('https://unsplash.com/photos/twukN12EN7c/download'),
           placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover, //ajusta imagen a todo el ancho posible
         ),
          Container(
            padding: EdgeInsets.all(10.0),
            child:
             Text('no tengo idea'),
             )
        ],
      ),
    );
  }
}
