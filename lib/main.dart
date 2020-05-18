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
        body: Column(
        children: <Widget>[
          TextField(controller: _controleNome,),
          TextField(controller: _controleQuantidade,),
          TextField(controller: _controleValor,),
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
  );
}
}

