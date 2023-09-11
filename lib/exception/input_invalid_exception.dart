class InputInvalidException implements Exception {
  String error() => "Input Invalido";
  @override
  String toString(){
    return error();
  }
  
}