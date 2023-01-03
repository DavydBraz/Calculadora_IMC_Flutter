class Calculadora {
  String _classificacao = "";

  static double imc_calculo(double peso, double altura) {
    double _imc = peso / (altura * altura);
    return _imc;
  }

  String classificacao_de_imc(double imc) {
    try {
      if (imc < 16) {
        _classificacao = "Magreza grave";
      } else if (imc < 17) {
        //pode ser assim ao inves de 16<imc<17, por que ja passou pela outra verificacao a cima
        _classificacao = "Magreza moderada";
      } else if (imc < 18.5) {
        //mesma explicacao da de cima, e que vai se repetir nas de baixo
        _classificacao = "Magreza leve";
      } else if (imc < 25) {
        _classificacao = "Saudavel";
      } else if (imc < 30) {
        _classificacao = "Sobrepeso";
      } else if (imc < 35) {
        _classificacao = "Obesidade Grau I";
      } else if (imc < 40) {
        _classificacao = "Obesidade Grau II(severa)";
      } else {
        _classificacao = "Obesidade Grau III(morbida)";
      }
    } catch (e) {
      _classificacao =
          "Nao foi possivel calculala devido a erro, tente mais tarde novamente!";
    }
    return _classificacao;
  }
}
