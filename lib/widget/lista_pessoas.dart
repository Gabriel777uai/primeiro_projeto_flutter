import 'package:flutter/widgets.dart';
import 'package:primeiro_projeto_flutter/mock/gerar_pessoas.dart';
import 'package:primeiro_projeto_flutter/widget/custom_person_title.dart';
import 'package:primeiro_projeto_flutter/widget/custom_title.dart';
import 'package:primeiro_projeto_flutter/widget/pessoa_listtile.dart';

class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);

    return ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, index) {
        return CustomPersonTitle(pessoa: pessoas[index]);
      }
    );
  }
}
