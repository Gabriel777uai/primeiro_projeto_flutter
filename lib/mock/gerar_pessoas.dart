import 'package:faker/faker.dart';
import 'package:primeiro_projeto_flutter/model/pessoa.dart';

List<Pessoa> gerarPessoas(int quantidade) {
  return List.generate(
    quantidade,
    (index) => Pessoa(
      id: index,
      nome: Faker().person.firstName(),
      altura: Faker().person.random.integer(200),
      peso: Faker().randomGenerator.decimal(min: 50, scale: 100),
    ),
  );
}
