import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final TextEditingController _controleNome = TextEditingController();
  final TextEditingController _controleQuantidade = TextEditingController();
  final TextEditingController _controleValor = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando produto'),
        ),
        body: Column(
        children: <Widget>[
          TextField(),
          TextField(),
          TextField(),
          RaisedButton(
      child: Text('Cadastrar'),
      onPressed: () {},
    )
        ],
      ),
    ),
  );
}
}

