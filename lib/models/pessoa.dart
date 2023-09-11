class Pessoa{
  final String _nome;
  final double _peso;
  final double _altura;
  late double _imc;
  
  Pessoa(this._nome,this._peso,this._altura){
    _imc = _peso/(_altura*_altura);
    _imc = double.parse(_imc.toStringAsFixed(1));
 
  }


double getIMCValue(){
  return _imc;
}
String getNome(){
  return _nome;
}
double getPeso(){
  return _peso;
}
double getAltura(){
  return _altura;
}

}