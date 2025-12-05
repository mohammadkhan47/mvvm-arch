class AppException implements Exception{

  final _message;
  final _prefix;
  AppException([this._message,this._prefix]);

 String toString(){
   return '$_prefix$_message';
 }
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, 'error during communication');

}
class BadrequestException extends AppException {
  BadrequestException([String? message]) : super(message, 'invalid exception ');

}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid input');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super(message, 'Unauthorizedexception request ');

}

