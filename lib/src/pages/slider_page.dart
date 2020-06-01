import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  bool _bloquearSlide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  // Widget _crearCheckbox() {
  //   return Checkbox(
  //       value: _bloquearCheck,
  //       onChanged: (valor) {
  //         setState(() {
  //           _bloquearCheck = valor;
  //         });
  //       });
  // }
  Widget _crearCheckbox() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearSlide,
        onChanged: (valor) {
          setState(() {
            _bloquearSlide = valor;
          });
        });
  }

Widget  _crearSwitch() {

  return SwitchListTile(
    title: Text('Bloquear Switch'),
    value: _bloquearCheck,
    onChanged: (valor){
      setState(() {
        _bloquearCheck = valor;
      });
    },
  );
}

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.t13.cl/images/sizes/1200x675/1579712507-captain-america-en-avengers-era-de-ultron-1119.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}
