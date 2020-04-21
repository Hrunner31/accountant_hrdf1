import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  _crearBotones() {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _disminuir
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar
        ),
      ],
    );    
  }

  void _agregar() {
    setState(() => _conteo ++);
  }

  void _disminuir() {
    setState(() => _conteo --);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}