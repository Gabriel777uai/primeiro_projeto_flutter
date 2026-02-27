import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/model/pessoa.dart';

class PessoaListtile extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaListtile({super.key, required this.pessoa});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: ListTile(
        leading: Text("Id: ${pessoa.id}"),
        title: Text("Nome: ${pessoa.nome}"),
        subtitle: Text("Peso: ${pessoa.peso}"),
        trailing: Text("Altura: ${pessoa.altura}"),
      ),
    );
  }
}