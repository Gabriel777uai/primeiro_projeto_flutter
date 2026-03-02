import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/model/pessoa.dart';
import 'package:primeiro_projeto_flutter/widget/custom_title.dart';

class CustomPersonTitle extends StatelessWidget {
  final Pessoa pessoa;

  const CustomPersonTitle({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return CustomTitle(
      color: Colors.lightBlue,
      leading: Text("Id: ${pessoa.id}"),
      title: Text("Nome: ${pessoa.nome}"),
      subTitle: Text("Peso: ${pessoa.peso.toStringAsFixed(2)}"),
      trailing: Text("Altura: ${pessoa.altura} cm"),
    );
  }
}
