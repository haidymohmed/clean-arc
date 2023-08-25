import 'dart:developer' as developer;

class Failure {
  int code;
  String message;
  String place ;
  Failure({required this.code, required this.message , this.place = ""}){
    developer.log(
      '($code): Error ==> $message',

      name: 'AppExceptionsHandler || $place',
    );
  }
}
