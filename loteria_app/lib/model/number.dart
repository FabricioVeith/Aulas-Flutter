import 'dart:math';

class Number{
  int _number1;
  int _number2;
  int _number3;
  int _number4;
  int _number5;
  int _number6;

  get number1{
    return this._number1;
  }

  set number1(int number1) {
    this._number1 = number1;
  }
  get number2{
    return this._number2;
  }
  set number2(int number2){
    this._number2 = number2;
  }
  get number3{
    return this._number3;
  }
  set number3(int number3){
    this._number3 = number3;
  }
  get number4{
    return this._number4;
  }
  set number4(int number4){
    this._number4 = number4;
  }
  get number5{
    return this._number5;
  }
  set number5(int number5) {
    this._number5 = number5;
  }
  get number6{
    return this._number6;
  }
  set number6(int number6){
    this._number6 = number6;
  }

  void generateRandomicNumnber() {
    Random random = new Random();
    this._number1 = random.nextInt(60);
    this._number2 = random.nextInt(60);
    this._number3 = random.nextInt(60);
    this._number4 = random.nextInt(60);
    this._number5 = random.nextInt(60);
    this._number6 = random.nextInt(60);
  }

  String toString() {
    return '${this._number1}-${this._number2}-${this._number3}-${this._number4}-${this._number5}-${this._number6}';
  }
}