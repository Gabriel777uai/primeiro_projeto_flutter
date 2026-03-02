import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/model/pessoa.dart';
import 'package:primeiro_projeto_flutter/widget/lista_pessoas.dart';
import 'package:primeiro_projeto_flutter/widget/pessoa_listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela de Vendas teste"),
        ),
        body: ListaPessoas(),
      ),
    );
  }
}



