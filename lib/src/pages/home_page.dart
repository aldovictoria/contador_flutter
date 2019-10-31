import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloTexto = new TextStyle(fontSize: 25);
  final int conteo = 10;
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
            Text('numero de clicks', style: estiloTexto),
            Text(conteo.toString(), style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add_circle_outline),
        onPressed: (){
          print('hola mundo');
          
        },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }



}