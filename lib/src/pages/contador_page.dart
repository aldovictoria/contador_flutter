import 'package:flutter/material.dart';

class contadorPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    
    return _ContadorPageState();
  }

}


class _ContadorPageState extends State <contadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int  _conteo = 10;

  @override
  Widget build(BuildContext context) {

    




    return  Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
        elevation: 0.2 ,

      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('numero de clicks', style: _estiloTexto),
            Text(_conteo.toString(), style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30.0,),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _zero ),
      Expanded(child: SizedBox(width: 20.0,)),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _quitar ),
      SizedBox(width: 20.0,),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      
    ],); 
  }


  void _agregar(){
    setState(() {
    _conteo++;
      
    });
  }

  void _quitar(){
    setState(() {
    _conteo--;
      
    });
  }

  void _zero(){
    setState(() {
    _conteo = 0;
      
    });
  }


}