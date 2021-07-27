class Calculadora{
  double numero1;
  double numero2;

  Calculadora(this.numero1,this.numero2);

  double calcularASoma() {
    return this.numero1 + this.numero2;
  }

  double calcularASubtracao() {
    return this.numero1 - this.numero2;
  }

  double calcularAMultiplicacao() {
    return this.numero1 * this.numero2;
  }

  double calcularADivirsao() {
    return this.numero1 / this.numero2;
  }

  @override
  String toString() {
    return 'numero1: $numero1, \n'
        'numero2: $numero2\n'
        'A Soma é: ${this.calcularASoma()}\n'
        'A Subtração é: ${this.calcularASubtracao()}\n'
        'A Multiplicação é:${this.calcularAMultiplicacao()}\n'
        'A Diversão é: ${this.calcularADivirsao()}\n';

  }
}