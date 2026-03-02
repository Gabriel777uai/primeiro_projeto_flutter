import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/model/pessoa.dart';

class PessoaListtile extends StatefulWidget {
  final Pessoa pessoa;
  const PessoaListtile({super.key, required this.pessoa});

  @override
  State<PessoaListtile> createState() => _PessoaListtileState();
}

class _PessoaListtileState extends State<PessoaListtile> {
  @override
  void initState() {
    print("Iniciando lista aqui, id: ${widget.pessoa.id}");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 192, 192, 192),
      child: ListTile(
        leading: Text("Id: ${widget.pessoa.id}"),
        title: Text("Nome: ${widget.pessoa.nome}"),
        subtitle: Text("Peso: ${widget.pessoa.peso.toStringAsFixed(2)}"),
        trailing: Text("Altura: ${widget.pessoa.altura} cm"),
      ),
    );
  }
  @override
  void dispose() {
    print("Removendo, id: ${widget.pessoa.id}");
    super.dispose();
  }
}