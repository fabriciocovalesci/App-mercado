import 'package:flutter/material.dart';
import 'package:mercado/models/produto.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(controller: _controleNome,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(controller: _controleQuantidade,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(controller: _controleValor,),
            ),
            RaisedButton(
      child: Text('Cadastrar'),
      onPressed: () {

          final String nome = _controleNome.text;
          final int quantidade = int.tryParse(_controleQuantidade.text);
          final double valor = double.tryParse(_controleValor.text);
          
          final Produto produtoNovo = Produto(nome, quantidade, valor);
          print(produtoNovo);
      },
    )
          ],
      ),
        ),
    ),
  );
}
}

