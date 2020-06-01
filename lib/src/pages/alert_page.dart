import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),
            title: Text('Título de alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                    'Este es el contenido de mi alerta generica, bien aburrida pero este contenido sirve para ver las opciones que puedo tener'),
                FlutterLogo(size: 100.0),
              ],
            ),
            actions: <Widget>[
              FlatButton(child: Text('Cancelar'), onPressed: () => Navigator.of(context).pop(),),
              FlatButton(child: Text('OK !'), onPressed: (){},),
            ],
          );
        });
  }
}
