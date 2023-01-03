import 'package:calculadoraimc/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('Verificar Classificação', () {
    expect(Calculadora().classificacao_de_imc(22.892819979188342),
        equals("Saudavel"));
  });

  test('Verificar IMC', () {
    expect(Calculadora.imc_calculo(55, 1.55), equals(22.892819979188342));
  });
}
