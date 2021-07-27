class Person {
  String _nome;
  String _email;
  String _sobrenome;
  int _idade;

  Person(this._nome,this._email,this._sobrenome,this._idade);

  String get nome{
    return this._nome;
  }
  set nome(String nome) {
    this._nome = nome;
  }

  String get email{
    return this._email;
  }
  set email(String email) {
    this._email = email;
  }

  String get sobrenome{
    return this._sobrenome;
}
  set sobrenome(String sobrenome) {
    this._sobrenome = sobrenome;
  }

  int get idade{
    return this._idade;
  }
  set idade(int idade){
    this._idade = idade;
  }
  int calcularIdadeEmMeses() {
    return this._idade * 12;
  }
  double calcularIdadeEmSemanas() {
    return (calcularIdadeEmMeses() * 52) / 12;
  }

  int calcularIdadeEmDias() {
    return this._idade * 365;
  }
  int calcularIdadeEmHora() {
    return calcularIdadeEmDias() * 24;
  }
  int calcularIdadeEmMinutos() {
    return calcularIdadeEmDias() * 60;
  }
  @override
  String toString() {
    return 'Nome: ${this._nome}\n,E-mail: ${this._email}\n,Sobrenome: ${this._sobrenome}\n,Idade: ${this._idade}\n';
  }

}