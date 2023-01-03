import 'dart:convert';
import 'dart:io';

class Pessoa {
  String _nome = "";
  double _peso = 0; //inicia como null
  double _altura = 0;

//Construtor
  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
//Metodos e (get, set)

  static String entrar_nome() {
    try {
      print("Informe o nome:");
      var nome = stdin.readLineSync(encoding: utf8) ?? "";
      return nome.toString();
    } catch (e) {
      print("Problema ao inserir nome, devido a isso sera usado o nome Padrao");
      return "Nome_Padrao";
    }
  }

  static double entrar_peso() {
    try {
      print("Informe o peso:");
      var line = stdin.readLineSync(encoding: utf8);
      var peso = double.parse(line ?? "0");
      return peso;
    } catch (e) {
      print("Problema ao inserir Peso, devido a isso sera usado o peso 60.0");
      return 60.0;
    }
  }

  static double entrar_altura() {
    try {
      print("Informe a altura:");
      var line2 = stdin.readLineSync(encoding: utf8);
      var altura = double.parse(line2 ?? "0");
      return altura;
    } catch (e) {
      print(
          "Problema ao inserir altura, devido a isso sera usado a altura 1.70");
      return 1.70;
    }
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }
}
