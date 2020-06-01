import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listNumeros = new List();
  int _ultimoNumero = 0;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) _agregar10();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: _crearLista(),
      // _fetchData(),
    );
  }



  Widget _crearLista() {
    return RefreshIndicator(
        onRefresh: obtenerPagina1,
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listNumeros[index];

          return FadeInImage(
            placeholder: AssetImage('assets/original.gif'),
            image:
                NetworkImage('https://i.picsum.photos/id/$imagen/500/300.jpg'),
          );
        },
      ),
    );
  }

 Future<Null> obtenerPagina1() async{

   final duration = new Duration(seconds: 2);
   new Timer(duration, (){

     _listNumeros.clear();
     _ultimoNumero++;
     _agregar10();

   });
 return Future.delayed(duration);
 }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoNumero++;
      _listNumeros.add(_ultimoNumero);
    }
    setState(() {});
  }

  /* Future _fetchData() {



  } */
}
