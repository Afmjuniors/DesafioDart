
import 'dart:convert';
import 'dart:io';

import 'package:meu_app/exception/input_invalid_exception.dart';
import 'package:meu_app/models/pessoa.dart';

String handleIF(double imc){
  if(imc<=16){
    return "Magreza grave";
  }else if(imc<=17){
    return "Magreza moderada";
  }else if(imc<=18.5){
    return "Magreza leve";
  }else if(imc<=25){
    return "Saudável";
  }else if(imc<=30){
    return "Sobrepeso";
  }else if(imc<=35){
    return "Obesidade Grau 1";
  }else if(imc<=40){
    return "Obesidade Grau 2";
  }else if(imc>40){
    return "Obesidade Grau 3";
  }else{
    throw Error();
  }
}

void execute(){

print("Qual seu nome?");
var inputNome = stdin.readLineSync(encoding: utf8).toString();
print("Qual sua altura?");
var inputAltura = double.tryParse(stdin.readLineSync(encoding: utf8).toString());
if (inputAltura == null) {
  throw InputInvalidException();
}
print("Qual seu peso?");
var inputPeso = double.tryParse(stdin.readLineSync(encoding: utf8).toString());
if (inputPeso == null) {
  throw InputInvalidException();
}
Pessoa user = Pessoa(inputNome, inputPeso, inputAltura);

print("${user.getNome()}, utulizando seu peso de ${user.getPeso()}Kg e altura de  ${user.getAltura()}m seu IMC é de ${user.getIMCValue()}.\n isto quer dizer que vc esta ${handleIF(user.getIMCValue())}.");


}