import 'package:calculadoraimc/Pessoa.dart';
import 'package:calculadoraimc/calculadora.dart';

void main(List<String> arguments) {
  var p1 = Pessoa(
      Pessoa.entrar_nome(), Pessoa.entrar_peso(), Pessoa.entrar_altura());
  double imc = Calculadora.imc_calculo(p1.getPeso(), p1.getAltura());
  String classificacao = Calculadora().classificacao_de_imc(imc);
  print("Seu IMC é: $imc");
  print(
      "De acordo com seu IMC você esta classificado no estado de: \n$classificacao");
}
